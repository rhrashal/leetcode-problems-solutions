// 2727.Is-Object-Empty.js

var isEmpty = function(obj) {
    if (Array.isArray(obj)) {
    return obj.length === 0;
  } else {
    return Object.keys(obj).length === 0;
  }
};

var dd = isEmpty({"x": 5, "y": 42})
console.log(dd)
