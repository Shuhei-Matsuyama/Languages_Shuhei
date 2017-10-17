/* 
 
 */

PImage img_Head;
PImage img_Body;
PImage img_Jacket_01;
PImage img_Jacket_02;
PImage img_Jacket_03;
PImage img_Jacket_04;
PImage img_Pants_01;
PImage img_Pants_02;
PImage img_Pants_03;
PImage img_Pants_04;
PImage img_Riot_01;
PImage img_Riot_02;
PImage img_Riot_03;
PImage img_Dragon_01;
PImage img_Dragon_02;
String state = "Jacket_01";
String stateP = "Pants_01";
String stateR = "Riot_01";

int Gspeed = -720;
int Gspeed2 = 0;
int Dslide = 350;
int Dfire = 0;

float easing =0.005;
float offset = 0;

void setup() {
  size(1280, 720);
  img_Head = loadImage("_King_Head_01.png");
  img_Body = loadImage("_King_Body_01.png");
  img_Jacket_01 = loadImage("_King_Jacket_01.png");
  img_Jacket_02 = loadImage("_King_Jacket_02.png");
  img_Jacket_03 = loadImage("_King_Jacket_03.png");
  img_Jacket_04 = loadImage("_King_Jacket_04.png");
  img_Pants_01 = loadImage("_King_Pants_01.png");
  img_Pants_02 = loadImage("_King_Pants_02.png");
  img_Pants_03 = loadImage("_King_Pants_03.png");
  img_Pants_04 = loadImage("_King_Pants_04.png");
  img_Riot_01 = loadImage("_King_Riot_01.png");
  img_Riot_02 = loadImage("_King_Riot_02.png");
  img_Riot_03 = loadImage("_King_Riot_03.png");
  img_Dragon_01 = loadImage("_King_Dragon_01.png");
  img_Dragon_02 = loadImage("_King_Dragon_02.png");
}

void draw() {
  background(201, 203, 122);
  image(img_Body, 0, 0);
  image(img_Riot_01, 0, 0);

  //Pants
  if (stateP == "Pants_01") {
    image(img_Pants_01, 0, 0);
  } else if (stateP == "Pants_02") {
    image(img_Pants_02, 0, 0);
  } else if (stateP == "Pants_03") {
    image(img_Pants_03, 0, 0);
  } else if (stateP == "Pants_04") {
    image(img_Pants_04, 0, 0);
  }

  //Jacket
  if (state == "Jacket_01") {
    image(img_Jacket_01, 0, 0);
  } else if (state == "Jacket_02") {
    image(img_Jacket_02, 0, 0);
  } else if (state == "Jacket_03") {
    image(img_Jacket_03, 0, 0);
  } else if (state == "Jacket_04") {
    image(img_Jacket_04, 0, 0);
  }

  image(img_Head, 0, 0);

  //Riot
  if (stateR == "Riot_02") {
    Gspeed = Gspeed + 20;
    image(img_Riot_02, 0, Gspeed);

    if (Gspeed >=0) {
      background(201, 203, 122);
      image(img_Riot_03, 0, 0);
      Gspeed2 = Gspeed2 + 20;
      image(img_Riot_02, 0, Gspeed2);
    }
  }
  //Dragon
  if (state == "Jacket_04" && stateP == "Pants_04" && Dslide<=350 && Dslide>=0) {
    Dslide = Dslide -3;
    image(img_Dragon_01, Dslide, 0);
  } else if (state == "Jacket_04" && stateP == "Pants_04" && Dslide<=0) {
    image(img_Dragon_01, 0, 0);
     Dfire = Dfire -4;
    image(img_Dragon_02, Dfire, 0);
  } else {
    Dslide = 350;
    Dfire = 0;
  }
  println(Dslide);
}

void mousePressed() {
  if (state == "Jacket_01" && mouseX >=500 && mouseX <=750 && mouseY>=230 && mouseY<=440) {
    state = "Jacket_02";
  } else if (state == "Jacket_02" && mouseX >=500 && mouseX <=750 && mouseY>=230 && mouseY<=440) {
    state = "Jacket_03";
  } else if (state == "Jacket_03" && mouseX >=500 && mouseX <=750 && mouseY>=230 && mouseY<=440) {
    state = "Jacket_04";
  } else if (state == "Jacket_04" && mouseX >=500 && mouseX <=750 && mouseY>=230 && mouseY<=440) {
    state = "Jacket_01";
  }

  if (stateP == "Pants_01" && mouseX >=500 && mouseX <=750 && mouseY>=440 && mouseY<=625) {
    stateP = "Pants_02";
  } else if (stateP == "Pants_02" && mouseX >=500 && mouseX <=750 && mouseY>=440 && mouseY<=625) {
    stateP = "Pants_03";
  } else if (stateP == "Pants_03" && mouseX >=500 && mouseX <=750 && mouseY>=440 && mouseY<=625) {
    stateP = "Pants_04";
  } else if (stateP == "Pants_04" && mouseX >=500 && mouseX <=750 && mouseY>=440 && mouseY<=625) {
    stateP = "Pants_01";
  }


  if (mouseX >=1080 && mouseX <=1210 && mouseY >= 538 && mouseY <= 685) {
    stateR = "Riot_02";
  }
}