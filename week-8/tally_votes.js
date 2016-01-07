// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with Gary Wong:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
//TEST 1:
  //Iterate through votes object
    //Iterate through each property
    //When 'Bob' is the value of President, add 'Bob' as property to the president   property of voteCount.
    //Increment his value by 1 each time he is voted as president.

//TEST 2:
//Iterate through votes object
    //Iterate through each property
    //When 'Bob' is the value of vicePresident, add 'Bob' as property to the vicePresident property of voteCount.
    //Increment his value by 1 each time he is voted as vicePresident.

//TEST 3:
//Iterate through votes object
    //Iterate through each property
    //When 'Bob' is the value of secretary, add 'Bob' as property to the secretary property of voteCount.
    //Increment his value by 1 each time he is voted as secretary.

//TEST 4:
//Iterate through votes object
    //Iterate through each property
    //When 'Bob' is the value of treasurer, add 'Bob' as property to the treasurer property of voteCount.
    //Increment his value by 1 each time he is voted as treasurer.

//TEST 5:
//Iterate through each position in the voteCount object
  //Iterate through each name and evaluate their numeric value
  //Whoever has the highest value, assign that name to the officers[president] property.
  //Louis should be the value of officers[president]
//TEST 6:
//Iterate through each position in the voteCount object
  //Iterate through each name and evaluate their numeric value
  //Whoever has the highest value, assign that name to the officers[vicePresident] property.
  //Herman should be the value of officers[vicePresident]
//TEST 7:
//Iterate through each position in the voteCount object
  //Iterate through each name and evaluate their numeric value
  //Whoever has the highest value, assign that name to the officers[secretary] property.
  //Fred should be the value of officers[secretary]
//TEST 8:
//Iterate through each position in the voteCount object
  //Iterate through each name and evaluate their numeric value
  //Whoever has the highest value, assign that name to the officers[treasurer] property.
  //Ivy should be the value of officers[treasurer]

// __________________________________________
// Initial Solution

// for (var person in votes) {
//   var obj = votes[person]

//   for (var title in obj) {
//     var name = obj[title]

//     if (voteCount[title][name]) {
//       voteCount[title][name] += 1;
//     } else {
//       voteCount[title][name] = 1;
//     }
//   }
// };

// console.log(voteCount);

// for (var title in voteCount){
//   var title_candidate = "";
//   var counter = 0;
//   for (var candidate in voteCount[title]){
//     if (voteCount[title][candidate] >= counter){
//       counter = voteCount[title][candidate]
//       title_candidate = candidate
//     }
//   }
//   officers[title] = title_candidate;
// };

// console.log(officers);

// __________________________________________
// Refactored Solution
for (var person in votes) {
  var ballet = votes[person];

  for (var title in ballet) {
    var candidate = ballet[title];
    (voteCount[title][candidate]) ? voteCount[title][candidate] += 1 : voteCount[title][candidate] = 1;
  }
};

console.log(voteCount);


for (var position in voteCount){
  var results = voteCount[position]

  var winningCandidate = "";
  var counter = 0;
  for (var candidate in results){
    if (results[candidate] >= counter){
      counter = results[candidate]
      winningCandidate = candidate
    }
  }
  officers[position] = winningCandidate;
};

console.log(officers);



// __________________________________________
// Reflection
// What did you learn about iterating over nested objects in JavaScript?
  //This exerise was really great practice. I learned that it can help to set a variable to a value or property in a nested object so you don't have to use so many brackets when accessing values. The code can get really confusing really fast so it's important to name your variables approriately and use them to cut back on chaining property on top of property.
// Were you able to find useful methods to help you with this?
  //We used for in loops the most to iterate through our objects and then we used if statements to tally the votes and add a winner's name to the officers object. Because we were dealing with objects and not arrays, I didn't find many built in methods that were useful.
// What concepts were solidified in the process of working through this challenge?
  //I solidifed my learning of why we use bracket notation for accessing values in a nested array. I didn't really see how useful it could be until we started working with more complicated objects.





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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)
