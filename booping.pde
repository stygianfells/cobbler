
void booping() {
  //scenery
  background(30, 87, 147);
  waveywaves();
  gameredherring1();
  gameredherring2();
  seagrass();
  //the actual bubble
  bouncyboi();
  //pause button and associated hooliganery
  noStroke();
  fill(80, 80);
  rect(420, 25, 60, 45);
  pausebutton();
  //score and high score;
  highscoreyboi();
  fill(255);
  textSize(15);
  text("score: "+score, 200, 40);
  text("high score: "+hiscore, 700, 40);
  //lives counter
  text("lives: "+lives, 450, 560);
  //the end
  if (lives == 0) {
    mode = death;
    over.rewind();
    over.play();
  }
}

//pause mode
void getpaused() {
  mode = eek;
}

//distractions
void gameredherring1() {
  ffish1x = ffish1x - 4;
  if (ffish1x < -3000) {
    ffish1x = 1800;
  }
  noStroke();
  fill(222, 78, 11);
  pushMatrix();
  translate(ffish1x, 200);
  beginShape();
  vertex(0, 0);
  vertex(14, -8);
  vertex(32, 0);
  vertex(44, -8);
  vertex(44, 6);
  vertex(32, 0);
  vertex(14, 6);
  endShape();
  popMatrix();
}

void gameredherring2() {
  ffish2x = ffish2x + 3;
  if (ffish2x > 4000) {
    ffish2x = -800;
  }
  noStroke();
  fill(222, 78, 11);
  pushMatrix();
  translate(ffish2x, 500);
  beginShape();
  vertex(0, 0);
  vertex(-14, -8);
  vertex(-32, 0);
  vertex(-44, -8);
  vertex(-44, 6);
  vertex(-32, 0);
  vertex(-14, 6);
  endShape();
  popMatrix();
}

//the return of the king
void bouncyboi() {
  x = x + vx;
  y = y + vy;
  if (x < bubsize/2 || x > 900-bubsize/2) {
    vx = vx * -1;
  }
  if (y < bubsize/2 || y > 600-bubsize/2) {
    vy = vy * -1;
  }
  
  if (ogon == true) {
    strokeWeight(2);
    stroke(255);
    pushMatrix();
    translate(x, y);
    fill(255, 100);
    circle(0, 0, bubsize);
    fill(255);
    noStroke();
    circle(testx+bubsize/4, testy-bubsize/4.2, bubsize/8);
    popMatrix();
  }
  else if (emoon == true) {
    strokeWeight(2);
    stroke(0);
    pushMatrix();
    translate(x, y);
    fill(0, 100);
    circle(0, 0, bubsize);
    fill(150);
    noStroke();
    circle(testx+bubsize/4, testy-bubsize/4.2, bubsize/8);
    popMatrix();
  }
  else if (blueon == true) {
    strokeWeight(2);
    stroke(29, 18, 180);
    pushMatrix();
    translate(x, y);
    fill(39, 100, 227, 100);
    circle(0, 0, bubsize);
    fill(139, 187, 237);
    noStroke();
    circle(testx+bubsize/4, testy-bubsize/4.2, bubsize/8);
    popMatrix();
  }
}

//pause
void pausebutton() {
  if (mode == booping && mouseX > 430 && mouseX < 470 && mouseY > 20 && mouseY < 60) {
    strokeWeight(7);
    stroke(255);
    fill(27, 135, 222);
    rect(430, 20, 40, 40);
  }
  strokeWeight(3);
  stroke(255);
  fill(27, 135, 222);
  rect(430, 20, 40, 40);
  fill(255);
  textSize(15);
  text("| |", 450, 38);
}

void highscoreyboi() {
  if (score > hiscore) {
    hiscore = score; 
  }
}
