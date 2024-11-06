// 2704.To-Be-Or-Not-To-Be.js

var expect = function(val) {
        function toBe(val2){
         if (val !== val2){
                throw new Error("Not Equal");
            }else{
                return true;
            }
    }
    function notToBe(val2){
          if (val === val2){
                throw new Error("Equal");
            }
            else{
                return true;
            }
    }
    return {
        toBe,notToBe
    }
};



console.log(expect({}).toBe({}));  
console.log(expect(5).notToBe(null)); 
