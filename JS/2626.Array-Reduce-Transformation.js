//2626.Array-Reduce-Transformation.js

var reduce = function(nums, fn, init) {
    var accumm = init;
    for (let i = 0; i < nums.length; i++) {
           accumm= fn(accumm, nums[i])
    }
    return accumm;
};





const arr = [10,20,30]
let init = 100;
// Function to be applied (e.g., doubling each element)
const sum = function(accum, curr) { return accum + curr; }
//or
const sum2 = function(accum, curr) { return accum + curr * curr; }
// Call the map function
const doubledNumbers = reduce(arr, sum, init);

console.log(doubledNumbers); 
