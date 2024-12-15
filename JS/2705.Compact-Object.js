var compactObject = function(obj) {
    // These three if statements deal with when obj is not an iterable object
    // Steps 1-3 as described above
    if (obj === null) return null;
    if (Array.isArray(obj)) return obj.filter(Boolean).map(compactObject);
    if (typeof obj !== "object") return obj;

    // This for loop deals with when obj is an iterable object
    // Steps 4-5 as described above
    const compacted = {};
    for (const key in obj) {
        let value = compactObject(obj[key]);
        if (value) compacted[key] = value;
    }

    return compacted;
};

// Test cases

// Case 1: Nested object with null and falsy values
const obj1 = {
  a: null,
  b: 0,
  c: false,
  d: "",
  e: {
    f: 1,
    g: undefined,
    h: {
      i: null,
      j: 2
    }
  }
};

// Case 2: Array with falsy values
const obj2 = [0, 1, false, 2, null, 3, undefined, "", [null, 4, 0]];

// Case 3: Mixed object and array
const obj3 = {
  a: [0, 1, null, 2],
  b: {
    c: false,
    d: "hello",
    e: []
  },
  f: null
};

// Case 4: Primitive value
const obj4 = null;

// Case 5: Empty object
const obj5 = {};

// Call the function and log the results
console.log("Case 1:", compactObject(obj1));
// Expected: { e: { f: 1, h: { j: 2 } } }

console.log("Case 2:", compactObject(obj2));
// Expected: [1, 2, 3, [4]]

console.log("Case 3:", compactObject(obj3));
// Expected: { a: [1, 2], b: { d: "hello" } }

console.log("Case 4:", compactObject(obj4));
// Expected: null

console.log("Case 5:", compactObject(obj5));
// Expected: {}
