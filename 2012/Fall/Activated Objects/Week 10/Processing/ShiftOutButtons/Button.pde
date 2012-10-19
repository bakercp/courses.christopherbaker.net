class Button {
  float x = 0;
  float y = 0;
  float w = 50;
  float h = 50;

  boolean value = false;

  public Button(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  void draw() {

    if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
      value = true;
    } 
    else {
      value = false;
    }    

    stroke(255);
    if (value == true) {
      fill(255, 127);
    } 
    else {
      noFill();
    }

    rect(x, y, w, h);
  }
}

