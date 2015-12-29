// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission:
  //Make it back to the spaceship safely. There is a martian trying to stop you so you have to shoot at him as you make your way back to the spaceship.
// Goals:
  //Get back to spaceship while avoiding the martian
  //Shoot the martian
// Characters:
  //Astronaut
  //Martian
// Objects:
  //Astronaut
    //Properties: x coordinate, y coordinate, win, shoot, move
  //Martian
    //Properties: x coordinate, y coordinate, health
  //Spaceship
    //Properties: x coordinate, y coordinate
  //Raygun
    //Properties: x coordinate, y coordinate
// Functions:
  //Move astronaut
    //This will change his coordinates
    //IF his coordiantes are the same as the martian, he dies
    //IF his coordinates are the same as the sapceship, he wins
  //Shoot raygun
    //This changes the raygun coordinates
    //IF the raygun coordinates are the same as the martian you injur him. After two hits he dies.
  //Move martial
    //This will change his coordinates

// Pseudocode
//Create astronaut object
  //Add properties:
    //Add x and y coordinates as propeties set to 0
    //shoot: a function that changes the x and y coordinates of the raygun
      //IF the raygun coordinates are the same as the martian - you win
    //move: a function that changes x and y coordinates of the astronaut and the martian
      //IF the coordinates are the same as the martians - you lose
      //IF the coordinates are the same as the spaceship - you win
//Create the martian object
  //Add x and y coordinates as propeties set to 0
//Create the spaceship object
  //Add x and y coordinates as propeties set to random numbers
//Create the raygun object
  //Add x and y coordinates as propeties set to 0


// Initial Code
// var astronaut = {
//   x: 0,
//   y: 0,
//   //Moves astronaut and martian
//   move: function(direction) {
//     if (direction === "right") {
//       this.x += 2;
//     } else if (direction === "left") {
//       this.x -= 2;
//     } else if (direction === "up") {
//       this.y += 2;
//     } else if (direction === "down") {
//       this.y -= 2;
//     } else {
//       console.log("That was not a valid direction")
//     }
//     console.log("Astronuat is at " + this.x + "," + this.y);

//     martian.x = Math.floor(Math.random() * (5 - 1 + 1)) + 1;
//     martian.y = Math.floor(Math.random() * (5 - 1 + 1)) + 1;
//     console.log("Martian is at " + martian.x + "," + martian.y);

//     //Check if astronaut made it to the ship
//     if ((this.x === spaceship.x) && (this.y === spaceship.y)) {
//       console.log("You made it back to the ship safe and sound.")
//     };

//     //Check if martian captured astronaut
//     if ((this.x === martian.x) && (this.y === martian.y)) {
//       console.log("The martian captured you GAME OVER")
//     };
//   },

//   //Fire the raygun by changing it's position
//   shoot: function() {
//     raygun.x = Math.floor(Math.random() * (5 - 1 + 1)) + 1;
//     raygun.y = Math.floor(Math.random() * (5 - 1 + 1)) + 1;
//     console.log("Raygun shoots at " + raygun.x + "," + raygun.y);

//     if ((raygun.x === martian.x) && (raygun.y === martian.y)) {
//       console.log("Congratulations you killed the martian! Now you can safely go back to the spaceship.")
//     };
//   }
// };

// var martian = {
//   x: 0,
//   y: 0
// };

// var spaceship = {
//   x: Math.floor(Math.random() * (5 - 1 + 1)) + 1,
//   y: Math.floor(Math.random() * (5 - 1 + 1)) + 1
// };

// var raygun = {
//   x: 0,
//   y: 0
// };

// astronaut.move("right");
// astronaut.shoot();
// astronaut.move("left");
// astronaut.shoot();
// astronaut.move("up");
// astronaut.shoot();

// Refactored Code
var astronaut = {
  x: 0,
  y: 0,
  win: false,

  //Moves astronaut and martian
  move: function(direction) {
    if (direction === "right") {
      this.x += 2;
    } else if (direction === "left") {
      this.x -= 2;
    } else if (direction === "up") {
      this.y += 2;
    } else if (direction === "down") {
      this.y -= 2;
    } else {
      console.log("That was not a valid direction")
    }
    console.log("Astronuat is at " + this.x + "," + this.y);

    martian.x = Math.floor(Math.random() * (10 - 1 + 1)) + 1;
    martian.y = Math.floor(Math.random() * (10 - 1 + 1)) + 1;
    console.log("Martian is at " + martian.x + "," + martian.y);

    //Check if astronaut made it to the ship
    if (this.x === spaceship.x && this.y === spaceship.y) {
      console.log("You made it back to the ship safe and sound.");
      this.win = true;
    }

    //Check if martian captured astronaut
    if (this.x === martian.x && this.y === martian.y) {
      console.log("The martian captured you GAME OVER")
    }
  },

  //Fire the raygun by changing it's position
  shoot: function() {
    raygun.x = Math.floor(Math.random() * (martian.x - 1 + 1)) + 1;
    raygun.y = Math.floor(Math.random() * (martian.y - 1 + 1)) + 1;
    console.log("Raygun shoots at " + raygun.x + "," + raygun.y);

    if (raygun.x === martian.x && raygun.y === martian.y) {
      martian.health -= 50;
      console.log("Martian health: " + martian.health)
    }

    if (martian.health == 0) {
      console.log("Congratulations you killed the martian! Now you can safely go back to the spaceship.");
      this.win = true;
    }
  }
};

var martian = {
  x: 0,
  y: 0,
  health: 100
};

var spaceship = {
  x: Math.floor(Math.random() * (2 - 1 + 1)) + 1,
  y: Math.floor(Math.random() * (2 - 1 + 1)) + 1
};

var raygun = {
  x: 0,
  y: 0
};


(astronaut.move('up'));
(astronaut.move('down'));
(astronaut.shoot());
(astronaut.shoot());
(astronaut.move('right'));
(astronaut.move('left'));

//Added Complexity to refactored solution:


// Reflection
// What was the most difficult part of this challenge?
  //The most difficult part was keeping track of the functions within my objects. It got a little confusing but when I spaced things out and added comments it made it much easier to follow.
// What did you learn about creating objects and functions that interact with one another?
  //I solidifed my learning of how you can call a function that changes the properties of a completely different object. This was a little confusing to me until I started coding for this challenge. The idea of using 'this' to reference properties of the object your in was also solidified for me.
// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
  //I had to use this in both solutions but I learned a lot more about Math.floor and Math.random for generating random numbes in JavaScript. It's not quite a straight forward as it was in Ruby. I mainly refactored for readability, I couldn't find any built in methods that really helped me refactor.
// How can you access and manipulate properties of objects?
  //You would access the value of a property by calling 'object.property'. If you wanted to change the value you would say 'object.property = new value'. You would use 'this.property' if you were already inside of your object.
