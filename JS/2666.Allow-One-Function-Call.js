// 2666.Allow-One-Function-Call.js
var once = function(fn) {
    let hasBeenCalled = false;
    let result;

    return function(...args) {
        if (!hasBeenCalled) {
            result = fn(...args);
            hasBeenCalled = true;
            return result;
        } else {
            return undefined;
        }
    };
};

// Example usage:
// let fn = (a, b, c) => (a + b + c)
// let onceFn = once(fn)

// First invocation calls the original function and returns its result
// Output: 6
console.log(once(1, 2, 3));

// Subsequent invocations return undefined without calling the original function
// Output: undefined
console.log(once(2, 3, 6));
