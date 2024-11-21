// Define the ArrayWrapper class
var ArrayWrapper = function(nums) {
    this.array = nums;
};

ArrayWrapper.prototype.valueOf = function() {
    return this.array.reduce((pre, cur) => pre + cur, 0);
};

ArrayWrapper.prototype.toString = function() {
    return JSON.stringify(this.array);
};

// Create an instance of ArrayWrapper
let nums = [1, 2, 3, 4];
let wrappedArray = new ArrayWrapper(nums);

// Call valueOf method
let sum = wrappedArray.valueOf();
console.log(sum); // Output: 10

// Call toString method
let stringRepresentation = wrappedArray.toString();
console.log(stringRepresentation); // Output: "[1,2,3,4]"
