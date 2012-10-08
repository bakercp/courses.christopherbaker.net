size(640,480); // set size of the sketch
background(0); // set background to black

stroke(255,127); // set the stroke to white
line(0,0,640,480); // draw a diagonal line

for(int i = 0; i < 10; i+=1) {
  if(i < 5) {
    println("Hello");
  } else if(i < 8) {
    println("yo");
  } else if(i < 10) {
    println("yo2");
  } else {
    println(i);
  }
}

println();  
println("Hello world."); // print a line of text
