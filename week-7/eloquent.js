// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var num1 = 100;
var num1 = num1 - 10;
console.log(num1);

//Asking use for input (ran in Chrome console)
// var favFood = prompt("What's your favorite food?", "");
// alert("Hey! " + favFood + " is my favorite food too!");



// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
//Looping A Triange
var hash = "#"
while (hash.length <= 7) {
  console.log(hash);
  hash += "#";
};

//FizzBuzz
for (var counter = 1; counter <= 100; counter ++) {
  if (counter % 3 === 0 && counter % 5 === 0)
    console.log("FizzBuzz");
  else if (counter % 3 === 0)
    console.log("Fizz");
  else if (counter % 5 === 0)
    console.log("Buzz");
  else
    console.log(counter);
};

// Functions
// Complete the `minimum` exercise.
function min(num1, num2) {
  if (num1 < num2)
    return (num1)
  else
    return (num2);
};

console.log(min(100, 10))


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Catie",
  age: 25,
  favFoods: ["pizza", "thai", "seafood"],
  quirk: "I absolutely love cooking and baking."
};

console.log(me)