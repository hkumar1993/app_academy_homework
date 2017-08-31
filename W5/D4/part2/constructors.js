function Elephant(name, height, tricks){
  this.name = name;
  this.height = height;
  this.tricks = tricks;
};

Elephant.prototype.trumpet = function(){
  console.log(`${this.name} the elephant goes 'toot toot'`);
};

Elephant.prototype.grow = function(){
  this.height += 12;
};

Elephant.prototype.addTrick = function(trick){
  this.tricks.push(trick);
};

Elephant.prototype.play = function(){
  random_trick_id = Math.floor(Math.random() * (this.tricks.length));
  random_trick = this.tricks[random_trick_id];
  // console.log(`${this.name} is ${random_trick}`);
  return `${this.name} is ${random_trick}`
};

Elephant.paradeHelper = function(elephant){
  console.log(`${elephant.play()} by!`);
}

let dumbo = new Elephant('Dumbo',36,["painting a picture"]);
dumbo.trumpet();
dumbo.grow();
console.log(`${dumbo.name} grew to ${dumbo.height}`)
dumbo.addTrick("playing a game")
dumbo.addTrick("singing a song")
dumbo.play()

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

herd.forEach(Elephant.paradeHelper);
