// //Release 1 Add user stories:
// // As a user I want to be able to create a new grocery list
// // As a user I want to add an item with a quantity to the list
// // As a user I want to be able to remove an item from the list
// // As a user I want to be able to update quantities for an item in my list
// // As a user I want to be able to print the list

// // Release 2 Pseudocode:
// // Create an empty grocery list that contains entries of items and a quantity
// // Create an 'add item' function that allows user to add an item and quantity to list
// // INPUT: item and quantity
// // OUTPUT: none
// // STEPS:
// //   Evaluate each item in the grocery list
// //   IF item is not already in the grocery list
// //     Add the item and associated quantity
// //   END

// // Create a 'remove item' function that allows user to remove an item
// // INPUT: item
// // OUTPUT: none
// // STEPS:
// //   Evaluate each item in the list
// //   IF item is in the list
// //     Remove the item from list
// //   END

// // Create an 'update' function that allows user to update quantity
// // INPUT: item and quantity
// // OUTPUT: none
// // STEPS
// //   Evaluate each item in the list
// //   WHEN you find the given item
// //     change the original quantity to the new quantity
// //   END

// // Create a 'print' functio that prints the list
// // INPUT: none
// // OUTPUT: a printed list
// // STEPS:
// //  Evaluate each item in the list and print out the item and quantity

// // Release 3 Initial Solution:
// // var list = {

// // };

// // function addItem(item, qty) {
// //   if (!list.hasOwnProperty(item)) {
// //     list[item] = qty
// //   }
// // };

// // function removeItem(item) {
// //   if (list.hasOwnProperty(item)) {
// //     delete list[item]
// //   }
// // };

// // function updateItem(item, qty) {
// //   if (list.hasOwnProperty(item)) {
// //     list[item] = qty
// //   }
// // };

// // function printList() {
// //   for (var item in list) {
// //     console.log(item + ": " + list[item])
// //   }
// // };


// //Release 4 Refactor:

// var list = {

// };

// function addItem(item, qty) {
//   if (!list.hasOwnProperty(item)) {
//     list[item] = qty
//   }
// };

// function removeItem(item) {
//   if (list.hasOwnProperty(item)) {
//     delete list[item]
//   }
// };

// function updateItem(item, qty) {
//   if (list.hasOwnProperty(item)) {
//     list[item] = qty
//   }
// };

// function printList() {
//   console.log("Grocery List")
//   for (var item in list) {
//     console.log(item,':',list[item])
//   }
// };

// // DRIVER TEST CODE
// addItem('apples', 2)
// addItem('oranges', 1)
// addItem('pears', 3)
// for (var item in list) {
//   console.log(list.hasOwnProperty(item) == true) //Should be true
// };

// removeItem('pears')
// console.log(list.hasOwnProperty('pears') == false); //Should be true

// updateItem('oranges', 4)
// console.log(list["oranges"] == 4); //Should be true

// printList();


// // Reflection:
// // What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
//   //I reviewed how to iterate through object properties and add create functions. At first I was going to use constructors but ended up liking my current solution better but I did review constructors because of that.
// // What was the most difficult part of this challenge?
//   //This wasn't too hard for me to translate into JavaScript, I actually thought it was easier than in Ruby. The most difficult part was when I was originally trying to use prototype and constructors. I wanted to use those concepts in my solution but it just didn't seem to work as well as my current solution.
// // Did an array or object make more sense to use and why?
//   //Yes, I thought it was easier to do this challenge in JavaScript using an object instead of a hash which I used in Ruby. It was easier to iterate through the JS objecy than a Ruby hash for me.


var addItem = function() {
  //Add item to list
  var listItem = document.getElementById("list-item").value;
  var liItem = document.createElement("li")
  liItem.innerHTML = listItem;
  document.getElementById("item-in-list").appendChild(liItem);

  //Add qty to list
  var listQty = document.getElementById("list-qty").value;
  var liQty = document.createElement("li")
  liQty.innerHTML = listQty;
  document.getElementById("qty-in-list").appendChild(liQty);

}

