/*minim corde reference
 http://code.compartmental.net/minim/audioinput_class_audioinput.html
 */

import processing.sound.*;
import ddf.minim.*;

FFT fft;
int bands = 2048;
int state = 0;

float Ry_001;
float Ry_002;
float Rx_001;
float Rx_002;
float Rsize_001;
float Rc_001;
PImage img_001;
PImage img_002;
PImage img_003;
PImage img_004;
PImage img_005;
PImage img_006;
PImage img_007;
PImage btn_001;
PImage btn_002;
PImage btn_003;
PImage btn_004;
PImage btn_005;
PImage btn_006;

PFont font;

Amplitude amp;
AudioIn mic;
AudioIn mic2;

Minim minim;
AudioInput mic3;

void setup() {
  size(1280, 720);

  mic = new AudioIn(this, 0);
  mic.start();

  mic2 = new AudioIn(this, 0);
  mic2.start();

  fft = new FFT(this, bands);
  fft.input(mic);

  amp = new Amplitude(this);
  amp.input(mic2);

  minim = new Minim(this);
  mic3 = minim.getLineIn();

  //FONT//
  font = createFont("pioneern.ttf", 120);
  textFont(font);

  rectMode(CENTER);
  img_001 = loadImage("Image_001.png");
  img_002 = loadImage("Image_002.png");
  img_003 = loadImage("cat01.png");
  img_004 = loadImage("cat02.png");
  img_005 = loadImage("King_001.png");
  img_006 = loadImage("King_002.png");
  img_007 = loadImage("King_003.png");
  btn_001 = loadImage("Button_001.png");
  btn_002 = loadImage("Button_002.png");
  btn_003 = loadImage("Button_003.png");
  btn_004 = loadImage("Button_004.png");
  btn_005 = loadImage("Button_005.png");
  btn_006 = loadImage("Button_006.png");
}


void draw() {
  background(237, 20, 91);
  fft.analyze();
  Ry_001 = random(1, 900);
  Ry_002 = random(1, 900);
  Rx_001 = random(600, 900);
  Rx_002 = random(1100, 1200);
  Rsize_001 = random(500, 700);
  Rc_001 = random(100, 255);
  float volume = amp.analyze();
  if (state==0 && volume>=0.105) {
    for (int i=0; i<fft.size(); i++) {
      float y = map(fft.spectrum[i], 0, 1, height*0.75, 0);
      stroke(102, 45, 145);
      line(i, (height+250)*0.75, i, y-200);
      fill(130, 202, 156, 50);
      noStroke();
      rect(640, (y+900)*0.5, Ry_001, 100 );
      // rect(Ry_002, (y-200)*-0.5, Ry_002, 100 );
    }
    image(img_001, 0, -340);
    image(btn_001, 0, 0);
    println(volume);
  } else if (state==0 && volume<0.105) {
    fill(102, 45, 145);
    noStroke();
    rect(0, 0, Rsize_001, Rsize_001 );
    rect(1280, 0, Rsize_001, Rsize_001 );
    rect(0, 720, Rsize_001, Rsize_001 );
    rect(1280, 720, Rsize_001, Rsize_001 );
    rect(640, 360, Rsize_001, Rsize_001 );
    image(img_002, 0, 0);
    image(btn_001, 0, 0);
  }

  //////////////CAT/////////////////////

  if (state==1 && volume>=0.105) {
    fill(255);
    textSize(200);
    text("WHEEEEEEEEEEEEEEEEE", 120, 350);
    image(img_003, 0, 0);
    image(btn_003, 0, 0);
    for (int s=0; s<fft.size(); s++) {
      float y2 = map(fft.spectrum[s], 0, 1, height*0.75, 0);
      stroke(0);
      line(900, 275, 1000, y2);
      line(1025, 239, 1500, y2);
      println(y2);
    }
  } else if (state==1 && volume<0.105) {
    image(img_004, 0, 0);
    image(btn_003, 0, 0);
  }


  //////////////King/////////////////////
  if (state==2 && volume>=0.105) {
    image(img_006, 0, 0);
    for (int i = 0; i < mic3.bufferSize() - 1; i++)
    {
      stroke(246, 146, 30);
      strokeWeight(2);
      line( i * 1.3, 360 + mic3.left.get(i)*50, (i + 1) * 1.3, 360 + mic3.left.get(i+1)*50 );
      line( i * 1.3, 355 + mic3.right.get(i)*55, (i + 1) * 1.3, 355 + mic3.right.get(i+1)*55 );
    }
    image(img_005, 0, 0);
    image(btn_005, 0, 0);
  } else if (state==2 && volume<0.105) {
    fill(102, Rc_001, 145);
    noStroke();
    rect(640, 360, 1000, 1000 );
    image(img_007, 0, 0);
    image(btn_005, 0, 0);
  }

  /////////Button///////////////
  if (state==0 && mouseX >=1050 && mouseX <=1215 && mouseY>=550 && mouseY<=680) {
    image(btn_002, 0, 0);
  }
  if (state==1 && mouseX >=1050 && mouseX <=1215 && mouseY>=550 && mouseY<=680) {
    image(btn_004, 0, 0);
  }
  if (state==2 && mouseX >=1050 && mouseX <=1215 && mouseY>=550 && mouseY<=680) {
    image(btn_006, 0, 0);
  }
}

void mousePressed() {
  if (state==0 && mouseX >=1050 && mouseX <=1215 && mouseY>=550 && mouseY<=680) {
    image(btn_002, 0, 0);
    state=1;
  } else if (state==1 && mouseX >=1050 && mouseX <=1215 && mouseY>=550 && mouseY<=680) {
    state=2;
  } else if (state==2 && mouseX >=1050 && mouseX <=1215 && mouseY>=550 && mouseY<=680) {
    state=0;
  }
}