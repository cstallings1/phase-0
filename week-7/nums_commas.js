// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Alana Hanson.

// Pseudocode
// Input: an integer
// Output: a string with commas added to integer at appropriate places
// Steps:
// Convert to a string, then split into array
// Reverse array
// Create new empty string
// Iterate over array, push chunks of 3 digits into new array plus comma into new array
// Reverse string for solution



// Initial Solution
var numComma = function(number) {
  number = number.toString();
  number = number.split("");
  number.reverse();

  var new_array = [];

  for (var i = 0; i < number.length; i++ ) {
    if ((i % 3 == 0) && (i != 0)) {
      new_array.push(",");
    }
    new_array.push(number[i]);
  };

  new_array.reverse();
  return (new_array.join(''));
};

// Your Own Tests (OPTIONAL)
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (numComma(0) === '0'),
  "The value of numComma(0) should be '0'.",
  "1. "
)

assert(
  (numComma(123) === '123'),
  "The value of numComma(123) should be '123'.",
  "1. "
)

assert(
  (numComma(1000) === '1,000'),
  "The value of numComma(1000) should be '1,000'.",
  "1. "
)

assert(
  (numComma(237874832) === '237,874,832'),
  "The value of numComma(237874832) should be '237,874,832'.",
  "1. "
)


// Final Refactored Solution
var numComma = function(number) {
  number = number.toString().split("").reverse();
  var commaAry = [];
  for (var i = 0; i < number.length; i++ ) {
    if ((i % 3 == 0) && (i != 0)) {
      commaAry.push(",");
    }
    commaAry.push(number[i]);
  }
  commaAry.reverse();
  return (commaAry.join(''));
};


//Solution using strings only
//We thought it might be a cleaner solution to use strings
//instead of arrays but it didn't turn out that way.

function reverse(x) {
  x = x.toString();
  var i = (x.length - 1);
  var newStr = '';
  while (i > -1) {
    newStr += (x[i]);
    i --;
  };
  return newStr;
};

var numComma = function(num) {
  num = reverse(num);
  var commaStr = "";

  for (var i = 0; i < num.length; i++ ) {
    if ((i % 3 == 0) && (i != 0)) {
      commaStr += (",");
    };
    commaStr += (num[i]);
  };
  commaStr = reverse(commaStr);
  return(commaStr);
};



// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
  //It was actually pretty similar in terms of breaking the problem down. However, I think we were forced to break down the problem into even smaller steps without the help of some of Ruby's built-in methods. We did have to approach the problem differently when it came to figuring out how to actually iterate through the array and insert the comma.
// What did you learn about iterating over arrays in JavaScript?
  //I learned that you can use the incrementor as a step instead of just incrementing by 1 each time - I didn't end up using this in the solution but I can see how that will helpful in the future.
// What was different about solving this problem in JavaScript?
  //The main differnce was figuring out how to solve the problem without as many built in methods. In one of our solutions we ended up having to write our own reverse method because you can't call reverse on a string.
// What built-in methods did you find to incorporate in your refactored solution?
  //We didn't end up using any new methods in our refactored version. We mainly ended up refactoring for better variable names, and conciseness. We did end up chaining some methods together in our refactored solution, I learned that you can do that in JavaScript as well.


