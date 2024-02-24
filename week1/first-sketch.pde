
// This is a comment (after the //); it's for explaining code to yourself 
// and others; use CMD + /   or CTRL + / (Windows) to toggle them for a
// line or for a series of lines you've highlighted
//
// You can also use comments to "disable" a line of code

// Other keyboard shortcuts
// Run: CMD + R (CTRL + R on Windows)
// Stop: Esc 

// int age = 6;
// println( "Age: ", age );  // Give a handy label when you print a variable!


// This function runs ONCE at the start of your program run
// (Processing does this automatically if you call it "setup")
void setup(){
  
  size( 800, 600 ); 
  // We ould instead use fullScreen(); to maximise screen canvas size -
  // if you do this, it can be hard to get out of fullscreen mode, so 
  // try using CMD + TAB (or ALT + TAB in Windows) to switch back to
  // the code editor
  
  // Also note that to find out the screen width and height when in
  // fullscreen mode where you haven't set the size explicitly, 
  // you can use the built-in variables "width" and "height":
  println("Width:", width, "  Height:", height);

  // Make the background black instead of grey:
  // Using one number here means "grayscale" instead of RGB,
  // i.e. 0 = black, 127 = halfway grey, 255 = fully white
  background( 0 ); 

  // Here's how you can switch the "colour space" used by Processing colour
  // functions so that the input numbers are treated as Hue, Saturation and 
  // Brightness, instead of Red, Green and Blue:
  //
  // colorMode( HSB );
  //
  // (The main reason for doing this is so we can smoothly cycle
  // through colours by changing only the hue value.)

  noStroke(); // If you want to turn off drawing outlines around shapes

  fill( 255, 0, 0 );  // Fully red, no green, no blue
  
  // circle( 400, 300, 200 );  // Draw a circle at x,y pos 400,300 with diameter 200
  
}  // end of setup function definition



// This function is our animation loop which Processing automatically runs
// for us 60 times per second (because we called it "draw")
void draw(){
  
  // Make a random position for the circle to appear each draw
  // (this is now commented out because we are using the mouse position instead)
  // float xPos = random( 0, 800 );
  // float yPos = random( 0, 600 );
  //
  // You can also just write random(600) which will assume a lower range of 0
  
  // Use a random filled-in colour each time we draw a new circle
  fill( 
    random(0, 255),   // r
    random(0, 255),   // g
    random(0, 255)    // b
    // 127 // You can add an optional "opacity" argument here for transparency
    // Don't forget to add a comma after the previous (blue) argument if you do this!
  );
  
  // Draw the circle at the current mouse position:
  // the variables "mouseX" and "mouseY" are pre-defined by Processesing
  // and updated each time draw() runs to contain the current position

  circle( mouseX, mouseY, 100 );
  

} // end of draw function definition


