println("---");
println("-5,-4,-3,-2,-1,0,1,2,3,4,5"); // goal
for (int i = -5; i < 6; i++) {
  print(i);
  if (i < 5) { 
    print(",");
  }
}

println("\n---");
println("0,2,4,6,8,10,12,14,16,18,20"); // goal
for (int i = 0; i < 21; i+=2) {
  print(i);
  if (i < 20) { 
    print(",");
  }
}

println("\n---");
println("0,3,2,5,4,7,6,9,8,11,10,13,12,15,14,17,16,19,18,20"); // goal
for (int i = 2; i < 22; i++) {
  if (i % 2 == 0) { // check if a number is even / odd, etc modulo operator 
    // even number
    print(i - 2);
  } else if (i == 21) {
    print( i - 1);
  } else {
    // odd number 
    print(i);
  }
}

println("\n---");
println("0,1,2,4,8,16,32,64,128,256,512,1024,2048,4096"); // goal
for (int i = 0; i < 13; i++) {
  if(i == 0) { // capture the first zero
    print(i);
    print(",");
  }
  print(int(pow(2,i)));
  if (i < 12) { 
    print(",");
 }
}

println("\n---");
println("0,3,6,9,12,15,18,21,24,27,30"); // goal
for (int i = 0; i < 31; i+=3) {
  print(i);
  if (i < 30) { 
    print(",");
  }
}

println("\n---");
println("0.0,0.1,0.2,0.3,0.4,0.5,6,7,8,9,10"); // goal
for (int i = 0; i < 11; i++) {
  if(i < 6) {
    print(i / 10.0f); // turns it into a floating point number
  } else {
    print(i);
  }
  if (i < 10) { 
    print(",");
  }
}

// Short (modified) Fibonacci series
println("\n---");
int lastNum0 = 0;
int lastNum1 = 1;
println("1,1,2,3,5,8,13,21,34,55,89,144"); // goal
for (int i = 0; i < 145; i = lastNum0 + lastNum1) {
  if (i == 0) {
    print(1);
  } 
  else {
    print(i);
    lastNum0 = lastNum1;
    lastNum1 = i;
  }
  if (i < 144) { 
    print(",");
  }
}

