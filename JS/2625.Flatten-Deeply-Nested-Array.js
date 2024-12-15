
var flat = function(arr, depth) {
  const stack = [...arr.map(item => [item, depth])];
  const result = [];

  while (stack.length > 0) {
    const [item, depth] = stack.pop();

    if (Array.isArray(item) && depth > 0) {
      stack.push(...item.map(subItem => [subItem, depth - 1]));
    } else {
      result.push(item);
    }
  }

  return result.reverse();
};





// Test cases
const arr1 = [1, [2, 3], [4, [5, 6]]];
const depth1 = 1;

const arr2 = [1, [2, [3, [4, [5]]]]];
const depth2 = 2;

const arr3 = [[[[1]]]];
const depth3 = 3;

const arr4 = [1, 2, 3];
const depth4 = 0; // Should return the same array because depth is 0

// Call the flat function with the test cases
console.log(flat(arr1, depth1)); // [1, 2, 3, 4, [5, 6]]
console.log(flat(arr2, depth2)); // [1, 2, 3, [4, [5]]]
console.log(flat(arr3, depth3)); // [[[1]]]
console.log(flat(arr3, 10)); // [1] - Flatten completely because depth is large enough
console.log(flat(arr4, depth4)); // [1, 2, 3]
