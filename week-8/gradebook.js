/*
Gradebook from Names and Scores

I worked on this challenge [with: Steven King]
This challenge took me [1] hours.

You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.
var gradebook = {

};

students.forEach(function(name){
  gradebook[name] = {};
});

for (var x = 0; x < students.length; x++){
  gradebook[students[x]]["testScores"] = scores[x]
}

gradebook["addScore"] = function(name, score){
  gradebook[name]["testScores"].push(score)
};

gradebook["getAverage"] = function(name){
  return average(gradebook[name]["testScores"])
};

function average(integers){
  var total = 0
  for (var count = 0; count < integers.length; count++){
    total += integers[count]
  }
  return (total / integers.length)
}


// __________________________________________
// Refactored Solution
var gradebook = {};

students.forEach(function(name){
  gradebook[name] = {};
});

for (var x = 0; x < students.length; x++){
  gradebook[students[x]]["testScores"] = scores[x]
}

gradebook["addScore"] = function(name, score){
  gradebook[name]["testScores"].push(score)
};

gradebook["getAverage"] = function(name){
  return average(gradebook[name]["testScores"])
};

function average(integers){
  var total = integers.reduce(function(a,b) {
    return a+b;
  });
  return (total / integers.length)
}


// __________________________________________
// Reflect

// What did you learn about adding functions to objects?
  //I learned that it's basically the same as adding anything else to an object, just a little more complicated because you have to be more careful with syntax and there's more going on in a function. For example, because we left out an explicit return in our 'getAverage' function it wouldn't work.
// How did you iterate over nested arrays in JavaScript?
  //We used a for loop to iterate through the scores array. We set a variable to 0 which we incremeneted and used as the index for the array.
// Were there any new methods you were able to incorporate? If so, what were they and how did they work?
  //We couldn't find much to refactor in terms of new methods, but we did use the reduce method to sum up the numbers of an array. I had used this method in Ruby but not in JavaScript and it was quit a bit different. It saved us a line of code and was good practice getting to use it.




// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)
