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
    //Properties: x coordinate, y coordinate
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
    //IF the raygun coordinates are the same as the martian you win
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
var astronaut = {
  x: 0,
  y: 0,
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

    martian.x = Math.floor(Math.random() * (5 - 1 + 1)) + 1;
    martian.y = Math.floor(Math.random() * (5 - 1 + 1)) + 1;
    console.log("Martian is at " + martian.x + "," + martian.y);

    //Check if astronaut made it to the ship
    if ((this.x === spaceship.x) && (this.y === spaceship.y)) {
      console.log("You made it back to the ship safe and sound.")
    };

    //Check if martian captured astronaut
    if ((this.x === martian.x) && (this.y === martian.y)) {
      console.log("The martian captured you GAME OVER")
    };
  },

  //Fire the raygun by changing it's position
  shoot: function() {
    raygun.x = Math.floor(Math.random() * (5 - 1 + 1)) + 1;
    raygun.y = Math.floor(Math.random() * (5 - 1 + 1)) + 1;
    console.log("Raygun shoots at " + raygun.x + "," + raygun.y);

    if ((raygun.x === martian.x) && (raygun.y === martian.y)) {
      console.log("Congratulations you killed the martian! Now you can safely go back to the spaceship.")
    };
  }
};

var martian = {
  x: 0,
  y: 0
};

var spaceship = {
  x: Math.floor(Math.random() * (5 - 1 + 1)) + 1,
  y: Math.floor(Math.random() * (5 - 1 + 1)) + 1
};

var raygun = {
  x: 0,
  y: 0
};

astronaut.move("right");
astronaut.shoot();
astronaut.move("left");
astronaut.shoot();
astronaut.move("up");
astronaut.shoot();



// Refactored Code






// Reflection
//
//
//
//
//
//
//
//