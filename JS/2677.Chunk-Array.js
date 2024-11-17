var chunk = function(arr, size) {
    let a = [];
    for (let i = 0; i < arr.length; i += size) {
        a.push(arr.slice(i, i + size));
    }
    return a;
};




var arr = [1,9,6,3,2]
var  size = 3
  
var dd = chunk(arr,size)

console.log(dd)
