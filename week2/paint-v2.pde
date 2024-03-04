
// This is a comment (after the //); it's for explaining code to yourself 
// and others; use CMD + /   or CTRL + / (Windows) to toggle them for a
// line or for a series of lines you've highlighted
//
// You can also use comments to "disable" a line of code

// Other keyboard shortcuts
// Run: CMD + R (CTRL + R on Windows)
// Stop: Esc 



// This is a "global" variable - not defined within any function, it can be read and written by every function!
// This is the only way to "remember" a changing value like our counter as its changed over multiple draw() calls.
int counter = 0; 




// This function runs ONCE at the start of your program run
// (Processing does this automatically if you call it "setup")
void setup(){
  
  size( 800, 600 ); 
  println("Width:", width, "  Height:", height);

  
  background( 0 );  // Make the background black instead of grey

  // Here's how you can switch the "colour space" used by Processing colour
  // functions so that the input numbers are treated as Hue, Saturation and 
  // Brightness, instead of Red, Green and Blue:

  colorMode( HSB ); 
  
  // (The main reason for doing this is so we can smoothly cycle
  // through colours by changing only the hue value.)


  noStroke(); // If you want to turn off drawing outlines around shapes


  // Does this work? NO! 
  // This var is now "local" to setup() - it can't be read or written from 
  // other fuctions like draw() 
  //
  // int counter = 0; 
    
}  // end of setup function definition



// This function is our animation loop which Processing automatically runs
// for us 60 times per second (because we called it "draw")
void draw(){
  
  // Does this work? NO - this is a "local" variable, stuck within the draw() function, and more importantly, 
  // it gets re-declared and re-initialised to 0 every time draw() runs again - so it "forgets" that we added 1 to it!
  //  
  // int counter = 0; 


  // Remember that when using HSB colour space the first value is Hue (not Red)... 
  // the optional 4th argument is opacity, makes nice see-through effect
  fill( counter , 255, 255, 127 );  
  

  // Draw the circle at the current mouse position:
  // the variables "mouseX" and "mouseY" are pre-defined by Processesing
  // and updated each time draw() runs to contain the current position

  // Only draw a circle if the mouse is held down (i.e dragged, or even pressed once)
  if( mousePressed == true ){
    circle(mouseX,mouseY, 100 );
  }

  // After the "if" you could optionally do something when mousePressed is NOT true 
  // (i.e draw a square instead of a circle):
  //
  // else {
  //   rect( mouseX, mouseY, 50, 50 );
  // }
  
  
  // Increase the counter by 1! Also known as "incrementing"
  // A shorter way to write this:  counter++;
  counter = counter + 1;   

  // Check if we need to reset "counter" when it gets too large to be useful for fill()
  if( counter > 255 ){
    counter = 0;  
  } 
  

  println( "counter: ", counter );   // "If in doubt, print it out"

} // end of draw function definition

