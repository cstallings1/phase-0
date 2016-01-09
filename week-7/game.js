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
    //If his coordiantes are the same as the martian, he dies
    //If his coordinates are the same as the sapceship, he wins
  //Shoot raygun
    //This changes the raygun coordinates
    //If the raygun coordinates are the same as the martian you win
  //Move martial
    //This will change his coordinates

// Pseudocode
//Create astronaut object
  //Add properties:
    //Add x and y coordinates as properties set to 0
    //shoot: a function that changes the x and y coordinates of the raygun by settng x and y to a random number.
      //IF the raygun coordinates are the same as the martian - you win
    //move: a function that changes x and y coordinates of the astronaut and the martian.
      //The astronaut moves right, left, up, or down based on user input
      //The martian moves by setting x and y equal to a random number
      //IF the astronaut coordinates are the same as the martians - you lose
      //IF the astronaut coordinates are the same as the spaceship - you win
//Create the martian object
  //Add x and y coordinates as propeties set to 0
//Create the spaceship object
  //Add x and y coordinates as propeties set to random numbers
//Create the raygun object
  //Add x and y coordinates as propeties set to 0


// Initial Code (MVP)
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
  health: 100,
  capturedMartians: 0,

  //Move astronaut
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
    console.log("Astronuat moves to " + this.x + "," + this.y);

    //Move martian
    martian.x = Math.floor(Math.random() * 5) + 1;
    martian.y = Math.floor(Math.random() * 5) + 1;
    console.log("Martian moves to " + martian.x + "," + martian.y)

    //Check if astronaut made it to the ship
    if (this.x === spaceship.x && this.y === spaceship.y) {
      console.log("You made it back to the ship safe and sound.");
    }

    //Check if martian captured astronaut
    if (this.x === martian.x && this.y === martian.y) {
      console.log("The martian captured you GAME OVER")
    }

    //Check if astronaut ran into black holes
    if ((this.x === blackHoles.x1 && this.y === blackHoles.y1) || (this.x === blackHoles.x2 && this.y === blackHoles.y2)) {
      this.health -= 50;
      console.log("You've fallen into a black hole! Your health: " + this.health)
    }

    if (this.health === 0) {
      console.log("You didn't make it out of the black hole - GAME OVER")
    }
  },

  //Fire the raygun by changing it's position
  shoot: function() {
    raygun.x = Math.floor(Math.random() * 5) + 1;
    raygun.y = Math.floor(Math.random() * 5) + 1;
    console.log("Raygun shoots at " + raygun.x + "," + raygun.y);

    if (raygun.x === martian.x && raygun.y === martian.y) {
      martian.health -= 50;
      console.log("Martian health: " + martian.health)
    }

    if (martian.health === 0) {
      this.capturedMartians += 1;
      martian.health = 100;
      console.log("Congratulations you captured a martian, but there's another one coming!.")
    }
  }
};

var martian = {
  x: 0,
  y: 0,
  health: 100
};

var spaceship = {
  x: Math.floor(Math.random() * 5) + 1,
  y: Math.floor(Math.random() * 5) + 1
};

var raygun = {
  x: 0,
  y: 0
};

var blackHoles = {
  x1: Math.floor(Math.random() * 5) + 1,
  y1: Math.floor(Math.random() * 5) + 1,
  x2: Math.floor(Math.random() * 5) + 1,
  y2: Math.floor(Math.random() * 5) + 1
};

astronaut.move('right');
astronaut.move('left');
astronaut.move('right');
astronaut.shoot();
astronaut.shoot();
astronaut.move('up');
astronaut.move('right');
astronaut.shoot();
astronaut.move('up');
astronaut.move('right');
astronaut.shoot();
astronaut.move('down');


//Release 6:
//I made a simplified version of this game with graphics using HTML5 and JavaScript:
//Link to game on personal site: http://cstallings1.github.io/javascript-game/index.html
//Raw css and html code on GitHub:
  //https://github.com/cstallings1/cstallings1.github.io/blob/master/javascript-game/index.html
  //https://github.com/cstallings1/cstallings1.github.io/blob/master/stylesheets/game.css

// Reflection
// What was the most difficult part of this challenge?
  //The most difficult part was figuring out how to create a game loop for my graphical verson of the game. After some research I found two different methods that seemed to work well and picked one of those.
// What did you learn about creating objects and functions that interact with one another?
  //I solidifed my learning of how you can call a function that changes the properties of a completely different object. This was a little confusing to me until I started coding for this challenge. Using 'this' to reference properties of the object was also solidified for me.
// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
  //I had to use this in both solutions but I learned a lot more about Math.floor and Math.random for generating random numbes in JavaScript. It's not quite as straight forward as it was in Ruby. I mainly refactored for readability and added complexity, I couldn't find any built in methods that really helped me refactor because I mainly used control flow to direct the path of the game.
// How can you access and manipulate properties of objects?
  //You would access the value of a property by calling 'object.property'. If you wanted to change the value you would say 'object.property = new value'. You would use 'this.property' if you were already inside of your object.
