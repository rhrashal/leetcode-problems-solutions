   const map = function(arr, fn) {
    let newArray = []
    for (let i = 0; i < arr.length; i++) {
        newArray.push(fn(arr[i], i));
    }
    return newArray
}; 




const numbers = [1, 2, 3, 4, 5];

// Function to be applied (e.g., doubling each element)
const double = function(value, index) {
    return value * 2;
};

// Call the map function
const doubledNumbers = map(numbers, double);

console.log(doubledNumbers); 
