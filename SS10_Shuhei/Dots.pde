  class Dots {
  float x;
  float y;

  
  Dots(float tempX, float tempY) {
    x= tempX;
    y= tempY;
  }

  //methods 
  void display() {
    ellipseMode(CENTER);
    fill(122, 33, 124);
    noStroke();
    //triangle(x, y+20, x+70, y+20, x+35, y+80);
    ellipse(x, y, 100, 100);
  } 
    
  void fall() {
    if (y>height+50) {
      y=-50;
    } else {
      y++;
    }
  }

  void jiggle() {
    x= x+random(-2, 2);
  }
}