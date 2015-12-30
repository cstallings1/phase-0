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
// var numComma = function(number) {
//   number = number.toString();
//   number = number.split("");
//   number.reverse();

//   var new_array = [];

//   for (var i = 0; i < number.length; i++ ) {
//     if ((i % 3 == 0) && (i != 0)) {
//       new_array.push(",");
//     }
//     new_array.push(number[i]);
//   };

//   new_array.reverse();
//   return (new_array.join(''));
// };

// Refactored Solution
var numComma = function(number) {
  number = number.toString().split("").reverse();
  for (var i = 3; i < number.length; i+=4 ) {
    number.splice(i, 0, ",");
  }
  return number.reverse().join('');
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
  "The value of numComma(0) should be '0'. You returned " + numComma(0),
  "1. "
)

assert(
  (numComma(123) === '123'),
  "The value of numComma(123) should be '123'. You returned " + numComma(123),
  "2. "
)

assert(
  (numComma(1000) === '1,000'),
  "The value of numComma(1000) should be '1,000'. You returned " + numComma(1000),
  "3. "
)

assert(
  (numComma(237874832) === '237,874,832'),
  "The value of numComma(237874832) should be '237,874,832'. You returned " + numComma(237874832),
  "4. "
)

assert(
  (numComma(10000) === '10,000'),
  "The value of numComma(10000) should be '10,000'. You returned " + numComma(10,000),
  "5. "
)


// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
  //It was actually pretty similar in terms of breaking the problem down. However, I think we were forced to break down the problem into even smaller steps without the help of some of Ruby's built-in methods. We did have to approach the problem differently when it came to figuring out how to actually iterate through the array and insert the comma.
// What did you learn about iterating over arrays in JavaScript?
  //I learned that you can use the incrementor as a step instead of just incrementing by 1 each time.
// What was different about solving this problem in JavaScript?
  //The main differnce was figuring out how to solve the problem without as many built in methods. At one point we wrote our own reverse function to reverse a string but that didn't end up being a good solution.
// What built-in methods did you find to incorporate in your refactored solution?
  //We ended up using the splice method to insert the comma into our array - ths was a new on for me and I can see it being really helpful since we don't have an insert function like we did in Ruby.


