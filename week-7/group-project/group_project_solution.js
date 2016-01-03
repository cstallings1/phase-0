//User Stories:
  //1. As a user I want a function called 'sum' that will provide the sum of a given set of numbers.
  //2. As a user I want a function called 'mean' that will provide the average of a given set of numbers.
  //3. As a user I want a function called 'median' that will provide the middle value of a given set of sorted numbers. If the given set of numbers contains an even amount of integers, I want the average of the two middle numbers.


// User Story 1 Pseudocode:
// Input: a given set of numbers (array?)
// Output: sum of the given set of numbers
// Steps:
// create a function called "sum" that will take a set of numbers as an argument
// add each of the numbers in the set
// return the sum of the numbers


// var sum = function(array){
// var result = 0;
//   for(var i=0; i < array.length; i++);
//  result += array[i];
//  return result
// };
// var my_array = [1, 3, 5];

// console.log(sum(my_array))

function sum(numbersArray){
  var sumNumbers = 0;
  for(var i=0; i < numbersArray.length; i++) {
    sumNumbers += numbersArray[i];
    }
  return (sumNumbers);
}

sum([1,2,3,4]);

//Refactored Solution
function sum(numbersArray){
  return numbersArray.reduce(function(sum, x){
    return sum + x;
  });
};
//As a user, I want to know the total of all my numbers.

// User Story 2 Pseudocode:
// Input: a given set of numbers (array?)
// Output: average of the given set of numbers
// Steps:
// create a function called "mean" that will take a set of numbers as an argument
// add each of the numbers in the set
// divide the sum by how many numbers there are in the given set
// return the mean


function mean(numbersArray){
  var sumNumbers = 0;
  for(var i=0; i < numbersArray.length; i++) {
    sumNumbers += numbersArray[i];
    }
  return (sumNumbers / numbersArray.length);
}

mean([5, 5, 7, 7]);

//refactored solution
function mean(numbersArray){
  return (sum(array)/(array.length));
};

//As a user, I want to know the average of a group of numbers.

// User Story 3 Pseudocode:
// Input: a given set of numbers (array?)
// Output: the median of the given set of numbers
// Steps:
// create a function called "median" that will take a set of numbers as an argument
// sort the numbers in the set in numerical order

// if the given set contains an odd number of numbers
//   return the number in the middle of the sorted set

// if the given set contains an even number of numbers
//   add the two numbers in the middle of the sorted set
//   return the sum of those two numbers divided by two.

function median(numbersArray){

  var sortedArray = numbersArray.sort(function(a, b){return a-b});


    if (sortedArray.length % 2 != 0){
    var midIndex = sortedArray.length / 2;
    midIndex = Math.floor(midIndex);
    return sortedArray[midIndex];
  }

    else {
       (sortedArray.length % 2 != 0)
    var midIndex = sortedArray.length / 2;
    return (sortedArray[midIndex] + sortedArray[midIndex-1]) /2;
  }

}

//Refactored solution
function median(array){
  array.sort(function(a, b){return a-b});
  var midIndex = array.length / 2;
  if (array.length % 2 === 0){
    return (array[midIndex] + array[(midIndex - 1)])/2;
  } else {
    return array[Math.floor(midIndex)];
  }
};

//As a user I want to know the number that is exactly halfway in my dataset.

//Test Summary:
//All tests passed except for test 5 and test 6 for the mean function.
//The logic was correct, but in our return statement we used a variable called 'array' which was never defined in the function.
//We should have used the variable name 'numbersArray' because that was defined in the function.
//This resulted in the following error: 'ReferenceError: array is not defined'