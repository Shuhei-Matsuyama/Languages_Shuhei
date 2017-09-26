/* Titile:ZAP
Shuhei Matsuyama : Week-03 assignment
*/
//
int r=0;
int s=0;
int spin=3;

int humanX = 0;
int humanY = 0;

int human01X = humanX;
int human02X = humanX+256;
int human03X = humanX+512;
int human04X = humanX+768;
int human05X = humanX+1024;
int human06X = humanX+1280;

int human01X2R = humanX+128;
int human02X2R = human02X+128;
int human03X2R = human03X+128;
int human04X2R = human04X+128;
int human05X2R = human05X+128;

int human01Y = humanY;
int human02Y = humanY+180;
int human03Y = humanY+360;
int human04Y = humanY+540;
int human05Y = humanY+720;

float beamR;
float beamG;
float beamB;

void setup() {
  size(1280, 720);
  frameRate(30);
}

void mousePressed() {
  background(144, 13, 250);
  strokeWeight(8);
  ellipse(0, 0, 300, 300);
  ellipse(0, 0, 550, 550);
  ellipse(0, 0, 600, 600);
}

void keyPressed() {
  background(100, 255, 130);
  strokeWeight(8);
  ellipse(0, 0, 300, 300);
  ellipse(0, 0, 550, 550);
  ellipse(0, 0, 600, 600);
  print("zap"+key);
}

void draw() {
  background(0);
  rectMode(CENTER);
  ellipseMode(CENTER);
  //r=0;

  //human01
  strokeWeight(8);
  stroke(50, 50, 50);
  line(human01X+10, human01Y-20, human01X+25, human01Y+30);
  line(human01X-10, human01Y-20, human01X-25, human01Y+30);
  fill(50, 50, 50);
  noStroke();
  ellipse(human01X, human01Y-30, 50, 50);
  rect(human01X, human01Y+10, 30, 60, 7);
  rect(human01X-10, human01Y+50, 10, 40, 7);
  rect(human01X+10, human01Y+50, 10, 40, 7);

  //human02
  strokeWeight(8);
  stroke(50, 50, 50);
  line(human02X+10, human01Y-20, human02X+25, human01Y+30);
  line(human02X-10, human01Y-20, human02X-25, human01Y+30);
  fill(50, 50, 50);
  noStroke();
  ellipse(human02X, human01Y-30, 50, 50);
  rect(human02X, human01Y+10, 30, 60, 7);
  rect(human02X-10, human01Y+50, 10, 40, 7);
  rect(human02X+10, human01Y+50, 10, 40, 7);

  //human03
  strokeWeight(8);
  stroke(50, 50, 50);
  line(human03X+10, human01Y-20, human03X+25, human01Y+30);
  line(human03X-10, human01Y-20, human03X-25, human01Y+30);
  fill(50, 50, 50);
  noStroke();
  ellipse(human03X, human01Y-30, 50, 50);
  rect(human03X, human01Y+10, 30, 60, 7);
  rect(human03X-10, human01Y+50, 10, 40, 7);
  rect(human03X+10, human01Y+50, 10, 40, 7);

  //human04
  strokeWeight(8);
  stroke(50, 50, 50);
  line(human04X+10, human01Y-20, human04X+25, human01Y+30);
  line(human04X-10, human01Y-20, human04X-25, human01Y+30);
  fill(50, 50, 50);
  noStroke();
  ellipse(human04X, human01Y-30, 50, 50);
  rect(human04X, human01Y+10, 30, 60, 7);
  rect(human04X-10, human01Y+50, 10, 40, 7);
  rect(human04X+10, human01Y+50, 10, 40, 7);

  //human05
  strokeWeight(8);
  stroke(50, 50, 50);
  line(human05X+10, human01Y-20, human05X+25, human01Y+30);
  line(human05X-10, human01Y-20, human05X-25, human01Y+30);
  fill(50, 50, 50);
  noStroke();
  ellipse(human05X, human01Y-30, 50, 50);
  rect(human05X, human01Y+10, 30, 60, 7);
  rect(human05X-10, human01Y+50, 10, 40, 7);
  rect(human05X+10, human01Y+50, 10, 40, 7);

  //human06
  strokeWeight(8);
  stroke(50, 50, 50);
  line(human06X+10, human01Y-20, human06X+25, human01Y+30);
  line(human06X-10, human01Y-20, human06X-25, human01Y+30);
  fill(50, 50, 50);
  noStroke();
  ellipse(human06X, human01Y-30, 50, 50);
  rect(human06X, human01Y+10, 30, 60, 7);
  rect(human06X-10, human01Y+50, 10, 40, 7);
  rect(human06X+10, human01Y+50, 10, 40, 7);

  //human01_2R
  strokeWeight(8);
  stroke(50, 50, 50);
  line(human01X2R+10, human02Y-20, human01X2R+25, human02Y+30);
  line(human01X2R-10, human02Y-20, human01X2R-25, human02Y+30);
  fill(50, 50, 50);
  noStroke();
  ellipse(human01X2R, human02Y-30, 50, 50);
  rect(human01X2R, human02Y+10, 30, 60, 7);
  rect(human01X2R-10, human02Y+50, 10, 40, 7);
  rect(human01X2R+10, human02Y+50, 10, 40, 7);

  //human02_2R
  strokeWeight(8);
  stroke(50, 50, 50);
  line(human02X2R+10, human02Y-20, human02X2R+25, human02Y+30);
  line(human02X2R-10, human02Y-20, human02X2R-25, human02Y+30);
  fill(50, 50, 50);
  noStroke();
  ellipse(human02X2R, human02Y-30, 50, 50);
  rect(human02X2R, human02Y+10, 30, 60, 7);
  rect(human02X2R-10, human02Y+50, 10, 40, 7);
  rect(human02X2R+10, human02Y+50, 10, 40, 7);

  //human03_2R
  strokeWeight(8);
  stroke(50, 50, 50);
  line(human03X2R+10, human02Y-20, human03X2R+25, human02Y+30);
  line(human03X2R-10, human02Y-20, human03X2R-25, human02Y+30);
  fill(50, 50, 50);
  noStroke();
  ellipse(human03X2R, human02Y-30, 50, 50);
  rect(human03X2R, human02Y+10, 30, 60, 7);
  rect(human03X2R-10, human02Y+50, 10, 40, 7);
  rect(human03X2R+10, human02Y+50, 10, 40, 7);

  //human04_2R
  strokeWeight(8);
  stroke(50, 50, 50);
  line(human04X2R+10, human02Y-20, human04X2R+25, human02Y+30);
  line(human04X2R-10, human02Y-20, human04X2R-25, human02Y+30);
  fill(50, 50, 50);
  noStroke();
  ellipse(human04X2R, human02Y-30, 50, 50);
  rect(human04X2R, human02Y+10, 30, 60, 7);
  rect(human04X2R-10, human02Y+50, 10, 40, 7);
  rect(human04X2R+10, human02Y+50, 10, 40, 7);

  //human05_2R
  strokeWeight(8);
  stroke(50, 50, 50);
  line(human05X2R+10, human02Y-20, human05X2R+25, human02Y+30);
  line(human05X2R-10, human02Y-20, human05X2R-25, human02Y+30);
  fill(50, 50, 50);
  noStroke();
  ellipse(human05X2R, human02Y-30, 50, 50);
  rect(human05X2R, human02Y+10, 30, 60, 7);
  rect(human05X2R-10, human02Y+50, 10, 40, 7);
  rect(human05X2R+10, human02Y+50, 10, 40, 7);

  //human01_3R
  strokeWeight(8);
  stroke(50, 50, 50);
  line(human01X+10, human03Y-20, human01X+25, human03Y+30);
  line(human01X-10, human03Y-20, human01X-25, human03Y+30);
  fill(50, 50, 50);
  noStroke();
  ellipse(human01X, human03Y-30, 50, 50);
  rect(human01X, human03Y+10, 30, 60, 7);
  rect(human01X-10, human03Y+50, 10, 40, 7);
  rect(human01X+10, human03Y+50, 10, 40, 7);

  //human02_3R
  strokeWeight(8);
  stroke(50, 50, 50);
  line(human02X+10, human03Y-20, human02X+25, human03Y+30);
  line(human02X-10, human03Y-20, human02X-25, human03Y+30);
  fill(50, 50, 50);
  noStroke();
  ellipse(human02X, human03Y-30, 50, 50);
  rect(human02X, human03Y+10, 30, 60, 7);
  rect(human02X-10, human03Y+50, 10, 40, 7);
  rect(human02X+10, human03Y+50, 10, 40, 7);

  //human03_3R
  strokeWeight(8);
  stroke(50, 50, 50);
  line(human03X+10, human03Y-20, human03X+25, human03Y+30);
  line(human03X-10, human03Y-20, human03X-25, human03Y+30);
  fill(50, 50, 50);
  noStroke();
  ellipse(human03X, human03Y-30, 50, 50);
  rect(human03X, human03Y+10, 30, 60, 7);
  rect(human03X-10, human03Y+50, 10, 40, 7);
  rect(human03X+10, human03Y+50, 10, 40, 7);

  //human04_3R
  strokeWeight(8);
  stroke(50, 50, 50);
  line(human04X+10, human03Y-20, human04X+25, human03Y+30);
  line(human04X-10, human03Y-20, human04X-25, human03Y+30);
  fill(50, 50, 50);
  noStroke();
  ellipse(human04X, human03Y-30, 50, 50);
  rect(human04X, human03Y+10, 30, 60, 7);
  rect(human04X-10, human03Y+50, 10, 40, 7);
  rect(human04X+10, human03Y+50, 10, 40, 7);

  //human05_3R
  strokeWeight(8);
  stroke(50, 50, 50);
  line(human05X+10, human03Y-20, human05X+25, human03Y+30);
  line(human05X-10, human03Y-20, human05X-25, human03Y+30);
  fill(50, 50, 50);
  noStroke();
  ellipse(human05X, human03Y-30, 50, 50);
  rect(human05X, human03Y+10, 30, 60, 7);
  rect(human05X-10, human03Y+50, 10, 40, 7);
  rect(human05X+10, human03Y+50, 10, 40, 7);

  //human06_3R
  strokeWeight(8);
  stroke(50, 50, 50);
  line(human06X+10, human03Y-20, human06X+25, human03Y+30);
  line(human06X-10, human03Y-20, human06X-25, human03Y+30);
  fill(50, 50, 50);
  noStroke();
  ellipse(human06X, human03Y-30, 50, 50);
  rect(human06X, human03Y+10, 30, 60, 7);
  rect(human06X-10, human03Y+50, 10, 40, 7);
  rect(human06X+10, human03Y+50, 10, 40, 7);

  //human01_4R
  strokeWeight(8);
  stroke(50, 50, 50);
  line(human01X2R+10, human04Y-20, human01X2R+25, human04Y+30);
  line(human01X2R-10, human04Y-20, human01X2R-25, human04Y+30);
  fill(50, 50, 50);
  noStroke();
  ellipse(human01X2R, human04Y-30, 50, 50);
  rect(human01X2R, human04Y+10, 30, 60, 7);
  rect(human01X2R-10, human04Y+50, 10, 40, 7);
  rect(human01X2R+10, human04Y+50, 10, 40, 7);

  //human02_4R
  strokeWeight(8);
  stroke(50, 50, 50);
  line(human02X2R+10, human04Y-20, human02X2R+25, human04Y+30);
  line(human02X2R-10, human04Y-20, human02X2R-25, human04Y+30);
  fill(50, 50, 50);
  noStroke();
  ellipse(human02X2R, human04Y-30, 50, 50);
  rect(human02X2R, human04Y+10, 30, 60, 7);
  rect(human02X2R-10, human04Y+50, 10, 40, 7);
  rect(human02X2R+10, human04Y+50, 10, 40, 7);

  //human03_4R
  strokeWeight(8);
  stroke(50, 50, 50);
  line(human03X2R+10, human04Y-20, human03X2R+25, human04Y+30);
  line(human03X2R-10, human04Y-20, human03X2R-25, human04Y+30);
  fill(50, 50, 50);
  noStroke();
  ellipse(human03X2R, human04Y-30, 50, 50);
  rect(human03X2R, human04Y+10, 30, 60, 7);
  rect(human03X2R-10, human04Y+50, 10, 40, 7);
  rect(human03X2R+10, human04Y+50, 10, 40, 7);

  //human04_4R
  strokeWeight(8);
  stroke(50, 50, 50);
  line(human04X2R+10, human04Y-20, human04X2R+25, human04Y+30);
  line(human04X2R-10, human04Y-20, human04X2R-25, human04Y+30);
  fill(50, 50, 50);
  noStroke();
  ellipse(human04X2R, human04Y-30, 50, 50);
  rect(human04X2R, human04Y+10, 30, 60, 7);
  rect(human04X2R-10, human04Y+50, 10, 40, 7);
  rect(human04X2R+10, human04Y+50, 10, 40, 7);

  //human05_4R
  strokeWeight(8);
  stroke(50, 50, 50);
  line(human05X2R+10, human04Y-20, human05X2R+25, human04Y+30);
  line(human05X2R-10, human04Y-20, human05X2R-25, human04Y+30);
  fill(50, 50, 50);
  noStroke();
  ellipse(human05X2R, human04Y-30, 50, 50);
  rect(human05X2R, human04Y+10, 30, 60, 7);
  rect(human05X2R-10, human04Y+50, 10, 40, 7);
  rect(human05X2R+10, human04Y+50, 10, 40, 7);

  //human01_5R
  strokeWeight(8);
  stroke(50, 50, 50);
  line(human01X+10, human05Y-20, human01X+25, human05Y+30);
  line(human01X-10, human05Y-20, human01X-25, human05Y+30);
  fill(50, 50, 50);
  noStroke();
  ellipse(human01X, human05Y-30, 50, 50);
  rect(human01X, human05Y+10, 30, 60, 7);
  rect(human01X-10, human05Y+50, 10, 40, 7);
  rect(human01X+10, human05Y+50, 10, 40, 7);

  //human02_5R
  strokeWeight(8);
  stroke(50, 50, 50);
  line(human02X+10, human05Y-20, human02X+25, human05Y+30);
  line(human02X-10, human05Y-20, human02X-25, human05Y+30);
  fill(50, 50, 50);
  noStroke();
  ellipse(human02X, human05Y-30, 50, 50);
  rect(human02X, human05Y+10, 30, 60, 7);
  rect(human02X-10, human05Y+50, 10, 40, 7);
  rect(human02X+10, human05Y+50, 10, 40, 7);

  //human03_5R
  strokeWeight(8);
  stroke(50, 50, 50);
  line(human03X+10, human05Y-20, human03X+25, human05Y+30);
  line(human03X-10, human05Y-20, human03X-25, human05Y+30);
  fill(50, 50, 50);
  noStroke();
  ellipse(human03X, human05Y-30, 50, 50);
  rect(human03X, human05Y+10, 30, 60, 7);
  rect(human03X-10, human05Y+50, 10, 40, 7);
  rect(human03X+10, human05Y+50, 10, 40, 7);

  //human04_5R
  strokeWeight(8);
  stroke(50, 50, 50);
  line(human04X+10, human05Y-20, human04X+25, human05Y+30);
  line(human04X-10, human05Y-20, human04X-25, human05Y+30);
  fill(50, 50, 50);
  noStroke();
  ellipse(human04X, human05Y-30, 50, 50);
  rect(human04X, human05Y+10, 30, 60, 7);
  rect(human04X-10, human05Y+50, 10, 40, 7);
  rect(human04X+10, human05Y+50, 10, 40, 7);

  //human05_5R
  strokeWeight(8);
  stroke(50, 50, 50);
  line(human05X+10, human05Y-20, human05X+25, human05Y+30);
  line(human05X-10, human05Y-20, human05X-25, human05Y+30);
  fill(50, 50, 50);
  noStroke();
  ellipse(human05X, human05Y-30, 50, 50);
  rect(human05X, human05Y+10, 30, 60, 7);
  rect(human05X-10, human05Y+50, 10, 40, 7);
  rect(human05X+10, human05Y+50, 10, 40, 7);

  //human06_5R
  strokeWeight(8);
  stroke(50, 50, 50);
  line(human06X+10, human05Y-20, human06X+25, human05Y+30);
  line(human06X-10, human05Y-20, human06X-25, human05Y+30);
  fill(50, 50, 50);
  noStroke();
  ellipse(human06X, human05Y-30, 50, 50);
  rect(human06X, human05Y+10, 30, 60, 7);
  rect(human06X-10, human05Y+50, 10, 40, 7);
  rect(human06X+10, human05Y+50, 10, 40, 7);

  translate(mouseX, mouseY);

  //UFO
  noStroke();
  fill(175);
  arc(0, -20, 60, 20, radians(180), radians(360));
  arc(0, -5, 90, 35, radians(0), radians(180));
  arc(0, -5, 50, 50, radians(0), radians(180));
  ellipse(0, 0, 150, 10);
  quad(-30, -22, 30, -22, 50, 0, -50, 0);

  //UFO windows
  beamR = random(255);
  beamG = random(255);
  beamB = random(255);
  fill(0, beamG, beamB);
  ellipse(0, -10, 12, 12);
  ellipse(-20, -10, 12, 12);
  ellipse(20, -10, 12, 12);

  //beam
  quad(-1, 25, 1, 25, -10, 50, -20, 50);
  quad(-10, 40, 10, 40, 5, 50, -20, 50);
  quad(-5, 40, 15, 40, -15, 70, -15, 70);

  //eppipse
  noFill();
  strokeWeight(3);
  rotate(radians(r));
  r += spin;
  stroke(0, beamG, beamG);
  ellipse(0, 5, 200, 200);

  stroke(0, beamG, beamB/2);
  ellipse(5, -5, 200, 200);

  stroke(0, beamG, beamB);
  ellipse(-5, -5, 200, 200);
}