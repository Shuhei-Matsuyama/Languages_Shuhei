int maxHair = 6;
int imageHair = 0;

PImage[] images = new PImage[maxHair];
PImage img_face_001;

void setup() {
  size(500, 500);
  for (int i = 0; i < images.length; i++) {
    images[i] = loadImage( "Hair_" + i + ".png" );
    img_face_001 = loadImage("Face_1.png");
  }
}

void draw() {
  image(img_face_001, 0, 0);
  image(images[imageHair], 0, 0);
}

void mousePressed() {
  imageHair=int(random(images.length));
}