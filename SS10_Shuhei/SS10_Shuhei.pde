// Title: AB-01
// Music: "Ted" by clark
// Display the dots and also jiggle the position by the random numbers
// The size of rectangles are changed by the volume of the sound

import processing.sound.*;
SoundFile song;
Amplitude analyzer;
Dots[] dots = new Dots[60];
PImage img_Test;

void setup() {
  size (500, 500);
  img_Test = loadImage("test.png");
  song = new SoundFile(this, "01 Ted.mp3");
  song.play();

  analyzer = new Amplitude(this);
  analyzer.input(song);

  for (int i = 0; i<dots.length; i++) {
    dots[i] = new Dots(random(width), random(height));
  }
}

void draw() {
  background(74, 198, 183);
  for (int i = 0; i<dots.length; i++) {
    dots[i].display(); 
    dots[i].fall();
    dots[i].jiggle();
    
    rectMode(CENTER);
    float volume = analyzer.analyze();
    image(img_Test, 0, 0);
    fill(25, 95, 210,60);
    noStroke();
    rect(250, 250, volume*400, volume*400);
    rect(250, 250, volume*1000, volume*1000);
    rect(0, 0, volume*400, volume*400);
    rect(0, 0, volume*1000, volume*1000);
    rect(500, 0, volume*400, volume*400);
    rect(500, 0, volume*1000, volume*1000);
    rect(0, 500, volume*400, volume*400);
    rect(0, 500, volume*1000, volume*1000);
    rect(500, 500, volume*400, volume*400);
    rect(500, 500, volume*1000, volume*1000);
    
    //println(volume);
  }
}