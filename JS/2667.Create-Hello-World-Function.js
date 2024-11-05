/**
 * @return {Function}
 */
var createHelloWorld = function() {
    
    return function(...args) {
        return "Hello World"
    }
};

/**
 * const f = createHelloWorld();
 * f(); // "Hello World"
 */
console.log(createHelloWorld()());

// or 

const hello = createHelloWorld();
console.log(hello());
