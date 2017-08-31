function isPrime (num) {
  if (num < 2) {
    return false;
  }

  for (var i = 2; i < num; i++) {
    if (num % i == 0) {
      return false;
    }
  }

  return true;
}

console.log('5 is ' + isPrime(5))
console.log('6 is ' + isPrime(6))


function sumOfNPrimes (num) {
  var primeSum = 0;
  var count = 0;
  var i = 2;

  while (count < num) {
    if (isPrime(i)) {
      primeSum += i;
      count++;
    }
    i++;
  }

  return primeSum;
}


console.log('sum of first 10 primes is : ' + sumOfNPrimes(10))
