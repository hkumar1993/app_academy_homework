function mysteryScoping3() {
  const x = 'out of block';
  // x is a constant and cannot be reassigned
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}

mysteryScoping3()
