
class Calculator {
    
    /**  
     * @param {number} value
     */
    constructor(value) {
        this.result = value;
    }
    
    /** 
     * @param {number} value
     * @return {Calculator}
     */
    add(value){
        this.result += value;
        return this;
    }
    
    /** 
     * @param {number} value
     * @return {Calculator}
     */
    subtract(value){
        this.result -= value;
        return this;
    }
    
    /** 
     * @param {number} value
     * @return {Calculator}
     */  
    multiply(value) {
        this.result *= value;
        return this;
    }
    
    /** 
     * @param {number} value
     * @return {Calculator}
     */
    divide(value) {
        if (value === 0){
            throw new Error("Division by zero is not allowed");
        }
        this.result /= value;
        return this;
    }
    
    /** 
     * @param {number} value
     * @return {Calculator}
     */
    power(value) {
        this.result **= value;
        return this;
    }
    
    /** 
     * @return {number}
     */
    getResult() {
        return this.result;
    }
}



// Create an instance of the Calculator class with an initial value
let calc = new Calculator(10);

// Call the add method
calc.add(5); // 10 + 5 = 15

// Call the subtract method
calc.subtract(3); // 15 - 3 = 12

// Call the multiply method
calc.multiply(2); // 12 * 2 = 24

// Call the divide method
calc.divide(4); // 24 / 4 = 6

// Call the power method
calc.power(3); // 6^3 = 216

// Get the result
let result = calc.getResult();
console.log(result); // Output: 216
