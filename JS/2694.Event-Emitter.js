
class EventEmitter {
  constructor() {
    this.events = new Map();
  }

  subscribe(event, cb) {
    if (!this.events.has(event)) {
      this.events.set(event, []);
    }

    const listeners = this.events.get(event);
    listeners.push(cb);

    return {
      unsubscribe: () => {
        const index = listeners.indexOf(cb);
        if (index !== -1) {
          listeners.splice(index, 1);
        }
      }
    };
  }

  emit(event, args = []) {
    if (!this.events.has(event)) {
      return [];
    }

    const listeners = this.events.get(event);
    const results = [];

    for (const listener of listeners) {
      results.push(listener(...args));
    }

    return results;
  }
}








// Create an instance of EventEmitter
const emitter = new EventEmitter();

// Subscribe to an event
const subscription1 = emitter.subscribe("greet", (name) => {
  console.log(`Hello, ${name}!`);
  return `Greeting sent to ${name}`;
});

const subscription2 = emitter.subscribe("greet", (name) => {
  console.log(`How are you, ${name}?`);
  return `Asked ${name} how they are`;
});

// Emit the event with an argument
const results = emitter.emit("greet", ["Alice"]);
console.log("Results:", results); // Logs the results of all the callbacks

// Unsubscribe the first listener
subscription1.unsubscribe();

// Emit the event again
const resultsAfterUnsubscribe = emitter.emit("greet", ["Bob"]);
console.log("Results after unsubscribe:", resultsAfterUnsubscribe); // Only the second callback should execute
