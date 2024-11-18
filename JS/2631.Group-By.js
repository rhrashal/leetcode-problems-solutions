Array.prototype.groupBy = function(fn) {
  return this.reduce((grouped, item) => {
    const key = fn(item);    
    if (!grouped[key]) {
      grouped[key] = [];
    }    
    grouped[key].push(item);
    return grouped;
  }, {});
};

var dd =  [1,2,3].groupBy(String)
console.log(dd)
