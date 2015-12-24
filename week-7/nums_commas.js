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
var num_comma = function(number) {
  number = number.toString();
  number = number.split("");
  number.reverse();

  var new_array = [];

  for (var i = 0; i < number.length; i ++ ) {
    if ((i % 3 == 0) && (i != 0)) {
      new_array.push(",");
    }
    new_array.push(number[i]);
  };

  new_array.reverse();
  console.log(new_array.join(''));
};

// num_comma(100895640444551);




// Refactored Solution
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

console.log(reverse(1234));





// Your Own Tests (OPTIONAL)




// Reflection





// var num_comma = function(number) {
//   number = number.toString();
//   number = number.split("");
//   number.reverse();

//   var new_array = [];


//   for (var i = 0; i < number.length; i ++ ) {
//     if ((i % 3 == 0) && (i != 0)) {
//       new_array.push(",");
//     }
//     new_array.push(number[i]);
//   };
//   new_array.reverse();
//   console.log(new_array.join(''));


// };

// num_comma(100895640444551);

