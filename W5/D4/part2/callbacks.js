function printCallback(name) {
  console.log("Mx. " + name + " Jingleheimer Schmidt")
}

function titlize(names, printCallback) {
  names = names.map(function(name){
    return name[0].toUpperCase() + name.slice(1);
  });

  names.forEach(printCallback)

}

names = ["Harsh", "Tyler", "Seth"]
titlize(names, printCallback)
