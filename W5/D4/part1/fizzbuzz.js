function fizzBuzz(array) {
  var fizArray = [];
  for (var i = 0; i < array.length; i++){
    if (array[i] % 3 == 0 && array[i] % 5 != 0) {
      fizArray.push(array[i]);
    }
    if (array[i] % 3 != 0 && array[i] % 5 == 0) {
      fizArray.push(array[i]);
    }
  };
  return fizArray
}

console.log(fizzBuzz([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]))
