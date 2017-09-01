const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function teaAndBiscuits () {
  reader.question('Would you like some tea?', function (teaAnswer) {
    console.log(`You replied ${teaAnswer}.`);
    reader.question('Would you like biscuits?', function(biscuitAnswer){
      console.log(`You replied ${biscuitAnswer}`);
      const firstRes = (teaAnswer === 'yes') ? 'do' : 'don\'t';
      const secondRes = (biscuitAnswer === 'yes') ? 'do' : 'don\'t';
      console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);
      reader.close();
    });
  });
}

teaAndBiscuits();
