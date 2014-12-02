Array.prototype.bubbleSort = function() {
  var arrEnd = this.length - 1;
  var outerCounter = 0;
  while (outerCounter < arrEnd) {
    var innerCounter = 0;
    while (innerCounter < arrEnd) {
      if (this[innerCounter] > this[innerCounter + 1]) {
        var temp = this[innerCounter + 1];
        this[innerCounter + 1] = this[innerCounter];
        this[innerCounter] = temp ;
      };
      innerCounter += 1;
    };
    outerCounter += 1
  };
  return this
};

Array.prototype.min = function() {
  return Math.min.apply(null, this);
};


Array.prototype.selectionSort = function() {
  var sorted_array = [];
  var temp_array = this;
  var counter = 0;
  var arrEnd = this.length;
  while(counter < arrEnd) {
    var index = temp_array.indexOf(temp_array.min());
    var x = parseInt(temp_array.splice([index], 1).join(''))
    console.log(x);
    sorted_array.push(x);
    counter += 1;
  }
  return sorted_array;
}
Array.prototype.quickSort = function() {

}
Array.prototype.insertionSort = function() {

}
Array.prototype.mergeSort = function() {

}

var array = [5, 10, 3, 15];
// console.log(array.min())
console.log("bubble");
console.log(array.bubbleSort());
console.log("selection");
console.log(array.selectionSort());

