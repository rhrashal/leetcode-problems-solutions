var join = function(arr1, arr2) {
    const result = {};
    for (let i = 0; i < arr1.length; i++) {
        result[arr1[i].id] = arr1[i];
    } 
    for (let i = 0; i < arr2.length; i++) {
        if (result[arr2[i].id]) {
            for (const key in arr2[i]) result[arr2[i].id][key] = arr2[i][key];  
        } else {
            result[arr2[i].id] = arr2[i];
        }
    } 

    return Object.values(result);
};



// Define the first array of objects
const array1 = [ { id: 1, name: 'Alice' }, { id: 2, name: 'Bob' } ]; 
// Define the second array of objects 
const array2 = [ { id: 1, age: 30 }, { id: 3, name: 'Charlie', age: 25 } ]; 
// Call the join function
const result = join(array1, array2); 
// Log the result to the console 
console.log(result);
