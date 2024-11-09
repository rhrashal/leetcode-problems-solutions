//2634.Filter-Elements-from-Array.js
var filter = function(arr, fn) {
   let newArray = []
    for (let i = 0; i < arr.length; i++) {
        var dd = fn(arr[i],i)
        if(dd){
           newArray.push(arr[i]); 
        }        
    }
    return newArray 
};



const arr = [0,10,20,30]

// Function to be applied (e.g., doubling each element)
const double = function(n){ return n > 10; }
or
const double1 = function(n, i) { return i === 0; }
// Call the map function
const doubledNumbers = filter(arr, double1);

console.log(doubledNumbers); 
