//2724.Sort-By.js

//Success
var sortBy = function(arr, fn) {
    return arr.sort((a, b) => fn(a) - fn(b));
};

// Field for Time 
var sortBy = function(arr, fn) { 
  // Bubble Sort Algorithm 
  for (let i = 0; i < arr.length - 1; i++) {
    for (let j = 0; j < arr.length - 1 - i; j++) { 
      if (fn(arr[j]) > fn(arr[j + 1])) {
        // Swap elements 
        let temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  } 
  return arr; 
};
  
// Example array
let numbers = [10, 5, 8, 1, 4];

// Example callback function that returns the value itself (for sorting numbers in ascending order)
let sortedNumbers = sortBy(numbers, function(x) {
    return x;
});

console.log(sortedNumbers); // Output: [1, 4, 5, 8, 10]
