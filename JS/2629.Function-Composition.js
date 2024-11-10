// 2629.Function-Composition.js

var compose = function(functions) {
    if(functions.length===0){
        return function(x) {
            return x;
        };
    }
    return functions.reduceRight(function(prevFn,nextFn){
        return function(x){
            return nextFn(prevFn(x));
        };
    });
};

const double1 = function(n){ return n + 1; }
const double2 = function(n){ return n * n; }
const double3 = function(n){ return n * 2; }

var arr = [double1,double2,double3]

const caalfun = compose(arr);
console.log(caalfun(5))
