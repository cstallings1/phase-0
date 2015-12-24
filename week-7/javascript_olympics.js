 // JavaScript Olympics

// I paired [with: Eddie Hodges] on this challenge.

// This challenge took me [1] hours.


// Warm Up


// Bulk Up
function olympics(array){
  for (var x=0; x < array.length; x++){
    array[x].win = array[x].name + " won the " + array[x].event + "!";
    console.log(array[x].win);
  }
}

olympics([{name: "Sarah Hughs", event: "Ladies Singles"}, {name: "Michael Jordan", event: "basketball"}])


// Jumble your words
var reverse = function (string) {
  return string.split("").reverse().join("");
};


console.log(reverse("this is our string"))


// 2,4,6,8
function evens(array){
  var  new_array = []
  for(var counter=0; counter < array.length; counter++)
    if(array[counter] %2 ===0){
      new_array.push(array[counter])
    }
  return new_array
}

console.log(evens([1,2,3,4,5,6,6,7,8]))


// "We built this city"
function Athlete (name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
};


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)




// Reflection

// What JavaScript knowledge did you solidify in this challenge?
  //The use of functions, using a constructor function vs the literal version. I can now see why we would use one over the other.
// What are constructor functions?
  //It's a way of creating an object in JavaScript. Constructor functions use the keyword 'this' to define properties and they allow you to create instances of your object and make changes to those objects throughout the program.
// How are constructors different from Ruby classes (in your research)?
  //Ruby classes use an "@" to denote an instance variable whereas constructor functions use "this" to denote a property. The notation is different when you create an instance. In Ruby you would use the syntax:
  //new_instance = Class.new(argument)
  //To create a new instance using a constructor function you use this syntax:
  //var newInstance = new Function(argument)
  //Another difference is that with constructor functions you create a method by setting a property value equal to a function. In Ruby you just define the method within the class.

