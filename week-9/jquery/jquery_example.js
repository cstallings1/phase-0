// U3.W9:JQuery


// I worked on this challenge [with: Devin Mandelbaum].
// This challenge took me [1.5] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM
mascot = $('.mascot');
image = $('div > img');
mainTitle = $('body > h1');

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
mainTitle.css({
  'color' : '#000080',
  'border' : '3px solid #FFA500',
  'visibility' : 'visible'
});

$('.mascot > h1').html('Squirrels 2016');

//RELEASE 4: Event Listener
  // Add the code for the event listener here
image.on('mouseover', function(e){
  e.preventDefault()
  $(this).attr('src', 'http://media1.santabanta.com/full1/Animals/Squirrel/squirrel-2a.jpg')
});
image.on('mouseleave', function(e){
  e.preventDefault()
  $(this).attr('src', 'dbc_logo.png')
});

//RELEASE 5: Experiment on your own
image.css({'border': 'solid #FFA500 1px'});

image.animate({
  opacity: '0.5'
});

image.on('click', function(){
  $(this).animate({
    height: '50%',
    width: '50%',
    borderWidth: '5px'
  })
  $(this).css({'border': 'dashed #000080'})
});


})  // end of the document.ready function: do not remove or write DOM manipulation below this.

// Reflection
// What is jQuery?
  //jQuery is a built in JavaScript library. It takes common tasks done in JavaScript and wraps them into methods you can call.
// What does jQuery do for you?
  //It provides built in methods that allow you to accomplish a task you could do with plain JavaScript in fewer lines of code. The jQuery library also provides CSS, HTML/DOM manipulation, animations, AJAX, and HTML event handlers.
// What did you learn about the DOM while working on this challenge?
  //I solidifed my learning of how to select elements based on their relationship to other elements. I also learned how to move elements around on the DOM using jQuery and how to change their CSS properties.