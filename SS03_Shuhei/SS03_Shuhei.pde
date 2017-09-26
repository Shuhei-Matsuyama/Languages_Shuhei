//BOX//
//Shuhei Matsuyama | 09-26-2017//
//Left X//
int x = 50;
int x1 = 50;
int x2 = 50;
int x3 = 50;
int x4 = 50;
int x5 = 50;
int state =0;
int state1 =0;
int state2 =0;
int state3 =0;
int state4 =0;
int state5 =0;

//Right X
int rx = 850;
int rx1 = 850;
int rx2 = 850;
int rx3 = 850;
int rx4 = 850;
int rx5 = 850;
int stateR =0;
int stateR1 =0;
int stateR2 =0;
int stateR3 =0;
int stateR4 =0;
int stateR5 =0;

//TOP
int y = 400;
int xc =400;
int yt0 = 50;
int yt1 = 50;
int yt2 = 50;
int yt3 = 50;
int yt4 = 50;
int yt5 = 50;
int stateyt0 =0;
int stateyt1 =0;
int stateyt2 =0;
int stateyt3 =0;
int stateyt4 =0;
int stateyt5 =0;
//Bottom
int yb0 = 850;
int yb1 = 850;
int yb2 = 850;
int yb3 = 850;
int yb4 = 850;
int yb5 = 850;
int stateyb0 =0;
int stateyb1 =0;
int stateyb2 =0;
int stateyb3 =0;
int stateyb4 =0;
int stateyb5 =0;

int speed = 7;

float ColoR = 255;
float ColoB=0;
float ColoG;
float ColoG1;
float ColoG2;
float ColoG3;



void setup() {
  size(800, 800);
  rectMode(CENTER);
  frameRate(30);
}

void draw() {
  background(100, 0, 0);
  /*stroke(255,0,0);
   strokeWeight(5);
   line(400,0,400,800);
   line(0,400,800,400);*/
  noStroke();
  fill(ColoR, ColoG, ColoB, 70);
  rect(400, 400, 800, 800);
  rect(400, 400, 600, 600);
  rect(400, 400, 400, 400);
  rect(400, 400, 200, 200);
  rect(400, 400, 100, 100);
  fill(250, 50, 5, 70);
  rect(x, y, 100, 100);
  rect(x1, y+100, 150, 150);
  rect(x1, y-100, 150, 150);
  rect(x2, y+200, 200, 200);
  rect(x2, y-200, 200, 200);
  rect(x3, y+300, 250, 250);
  rect(x3, y-300, 250, 250);
  rect(x4, y+400, 300, 300);
  rect(x4, y-400, 300, 300);
  //Right
  fill(ColoR, ColoG1, ColoB, 70);
  rect(rx, y, 100, 100);
  rect(rx1, y+100, 150, 150);
  rect(rx1, y-100, 150, 150);
  rect(rx2, y+200, 200, 200);
  rect(rx2, y-200, 200, 200);
  rect(rx3, y+300, 250, 250);
  rect(rx3, y-300, 250, 250);
  rect(rx4, y+400, 300, 300);
  rect(rx4, y-400, 300, 300);
  //Top
  fill(ColoR, ColoG2, ColoB, 70);
  rect(xc, yt0, 100, 100);
  rect(xc+100, yt1, 150, 150);
  rect(xc-100, yt1, 150, 150);
  rect(xc+200, yt2, 200, 200);
  rect(xc-200, yt2, 200, 200);
  rect(xc+300, yt3, 250, 250);
  rect(xc-300, yt3, 250, 250);
  rect(xc+400, yt4, 300, 300);
  rect(xc-400, yt4, 300, 300);
  //Bottom
  fill(ColoR, ColoG3, ColoB, 70);
  rect(xc, yb0, 100, 100);
  rect(xc+100, yb1, 150, 150);
  rect(xc-100, yb1, 150, 150);
  rect(xc+200, yb2, 200, 200);
  rect(xc-200, yb2, 200, 200);
  rect(xc+300, yb3, 250, 250);
  rect(xc-300, yb3, 250, 250);
  rect(xc+400, yb4, 300, 300);
  rect(xc-400, yb4, 300, 300);

  if (state == 0) {
    x = x + speed;
    if (x > width-50) {
      x = width -50;
      state = 1;
    }
  }
  if (state == 1) {
    x = x + speed*-1;
    if (x<50) {
      x=50;
      state = 0;
    }
  }
  if (state1 == 0) {
    x1 = x1 + (speed-1);
    if (x1 > width-50) {
      x1 = width -50;
      state1 = 1;
    }
  }
  if (state1 == 1) {
    x1 = x1 + (speed-1)*-1;
    if (x1<50) {
      x1=50;
      state1 = 0;
    }
  }
  if (state2 == 0) {
    x2 = x2 + (speed-2);
    if (x2 > width-50) {
      x2 = width -50;
      state2 = 1;
    }
  }
  if (state2 == 1) {
    x2 = x2 + (speed-2)*-1;
    if (x2<50) {
      x2=50;
      state2 = 0;
    }
  }
  if (state3 == 0) {
    x3 = x3 + (speed-3);
    if (x3 > width-50) {
      x3 = width -50;
      state3 = 1;
    }
  }
  if (state3 == 1) {
    x3 = x3 + (speed-3)*-1;
    if (x3<50) {
      x3=50;
      state3 = 0;
    }
  }
  if (state4 == 0) {
    x4 = x4 + (speed-4);
    if (x4 > width-50) {
      x4 = width -50;
      state4 = 1;
    }
  }
  if (state4 == 1) {
    x4 = x4 + (speed-4)*-1;
    if (x4<50) {
      x4=50;
      state4 = 0;
    }
  }

  //Right
  if (stateR == 0) {
    rx = rx + speed;
    if (rx > width-50) {
      rx = width -50;
      stateR = 1;
    }
  }
  if (stateR == 1) {
    rx = rx + speed*-1;
    if (rx<50) {
      rx=50;
      stateR = 0;
    }
  }
  if (stateR1 == 0) {
    rx1 = rx1 + (speed-1);
    if (rx1 > width-50) {
      rx1 = width -50;
      stateR1 = 1;
    }
  }
  if (stateR1 == 1) {
    rx1 = rx1 + (speed-1)*-1;
    if (rx1<50) {
      rx1=50;
      stateR1 = 0;
    }
  }
  if (stateR2 == 0) {
    rx2 = rx2 + (speed-2);
    if (rx2 > width-50) {
      rx2 = width -50;
      stateR2 = 1;
    }
  }
  if (stateR2 == 1) {
    rx2 = rx2 + (speed-2)*-1;
    if (rx2<50) {
      rx2=50;
      stateR2 = 0;
    }
  }
  if (stateR3 == 0) {
    rx3 = rx3 + (speed-3);
    if (rx3 > width-50) {
      rx3 = width -50;
      stateR3 = 1;
    }
  }
  if (stateR3 == 1) {
    rx3 = rx3 + (speed-3)*-1;
    if (rx3<50) {
      rx3=50;
      stateR3 = 0;
    }
  }
  if (stateR4 == 0) {
    rx4 = rx4 + (speed-4);
    if (rx4 > width-50) {
      rx4 = width -50;
      stateR4 = 1;
    }
  }
  if (stateR4 == 1) {
    rx4 = rx4 + (speed-4)*-1;
    if (rx4<50) {
      rx4=50;
      stateR4 = 0;
    }
  }
  //Top
  if (stateyt0 == 0) {
    yt0 = yt0 + speed;
    if (yt0 > height-50) {
      yt0 = height -50;
      stateyt0 = 1;
    }
  }
  if (stateyt0 == 1) {
    yt0 = yt0 + speed*-1;
    if (yt0<50) {
      yt0=50;
      stateyt0 = 0;
    }
  }
  if (stateyt1 == 0) {
    yt1 = yt1 + (speed-1);
    if (yt1 > height-50) {
      yt1 = height -50;
      stateyt1 = 1;
    }
  }
  if (stateyt1 == 1) {
    yt1 = yt1 + (speed-1)*-1;
    if (yt1<50) {
      yt1=50;
      stateyt1 = 0;
    }
  }
  if (stateyt2 == 0) {
    yt2 = yt2 + (speed-2);
    if (yt2 > height-50) {
      yt2 = height -50;
      stateyt2 = 1;
    }
  }
  if (stateyt2 == 1) {
    yt2 = yt2 + (speed-2)*-1;
    if (yt2<50) {
      yt2=50;
      stateyt2 = 0;
    }
  }
  if (stateyt3 == 0) {
    yt3 = yt3 + (speed-3);
    if (yt3 > height-50) {
      yt3 = height -50;
      stateyt3 = 1;
    }
  }
  if (stateyt3 == 1) {
    yt3 = yt3 + (speed-3)*-1;
    if (yt3<50) {
      yt3=50;
      stateyt3 = 0;
    }
  }
  if (stateyt4 == 0) {
    yt4 = yt4 + (speed-4);
    if (yt4 > height-50) {
      yt4 = height -50;
      stateyt4 = 1;
    }
  }
  if (stateyt4 == 1) {
    yt4 = yt4 + (speed-4)*-1;
    if (yt4<50) {
      yt4=50;
      stateyt4 = 0;
    }
  }
  //Bottom
  if (stateyb0 == 0) {
    yb0 = yb0 + speed;
    if (yb0 > height-50) {
      yb0 = height -50;
      stateyb0 = 1;
    }
  }
  if (stateyb0 == 1) {
    yb0 = yb0 + speed*-1;
    if (yb0<50) {
      yb0=50;
      stateyb0 = 0;
    }
  }
  if (stateyb1 == 0) {
    yb1 = yb1 + (speed-1);
    if (yb1 > height-50) {
      yb1 = height -50;
      stateyb1 = 1;
    }
  }
  if (stateyb1 == 1) {
    yb1 = yb1 + (speed-1)*-1;
    if (yb1<50) {
      yb1=50;
      stateyb1 = 0;
    }
  }
  if (stateyb2 == 0) {
    yb2 = yb2 + (speed-2);
    if (yb2 > height-50) {
      yb2 = height -50;
      stateyb2 = 1;
    }
  }
  if (stateyb2 == 1) {
    yb2 = yb2 + (speed-2)*-1;
    if (yb2<50) {
      yb2=50;
      stateyb2 = 0;
    }
  }
  if (stateyb3 == 0) {
    yb3 = yb3 + (speed-3);
    if (yb3 > height-50) {
      yb3 = height -50;
      stateyb3 = 1;
    }
  }
  if (stateyb3 == 1) {
    yb3 = yb3 + (speed-3)*-1;
    if (yb3<50) {
      yb3=50;
      stateyb3 = 0;
    }
  }
  if (stateyb4 == 0) {
    yb4 = yb4 + (speed-4);
    if (yb4 > height-50) {
      yb4 = height -50;
      stateyb4 = 1;
    }
  }
  if (stateyb4 == 1) {
    yb4 = yb4 + (speed-4)*-1;
    if (yb4<50) {
      yb4=50;
      stateyb4 = 0;
    }
  }
  //mouse
  if (mouseX<400 && mouseY <400) {
    fill(250, 00, 200, 80);
    rect(400, 400, 300, 300);
  }
  if (mouseX>400 && mouseY <400) {
    fill(200, 00, 250, 80);
    rect(400, 400, 400, 400);
  }
  if (mouseX<400 && mouseY >400) {
    fill(250, 250, 200, 80);
    rect(400, 400, 500, 500);
  }
  if (mouseX>400 && mouseY >400) {
    fill(200, 200, 250, 50);
    rect(400, 400, 600, 600);
  }
  ColoG = random(1,100);
  ColoG1 = random(150,200);
  ColoG2= random(150,200);
  ColoG3 = random(0,100);
}
void mousePressed() {
  if (ColoR>0 || ColoB<255) {
    ColoR = ColoR -50;
    ColoB = ColoB +50;
  } else {
    ColoR=255;
    ColoB=255;
  }
}