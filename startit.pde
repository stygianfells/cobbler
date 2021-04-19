
void startit() {
  //fanfare
  theme.play();
  background(30, 87, 147);
  waveywaves();
  //please laugh
  redherring1();
  redherring2();
  //play button shadow
  fill(80, 80);
  rect(310, 410, 280, 80);
  //options shadow
  fill(80, 80);
  rect(10, 25, 60, 45);
  //title
  fill(80, 80);
  textFont(blassphemy);
  textSize(135);
  text("BUBBLE CLICKER", 450, 220);
  bubble();
  fill(255);
  textFont(blassphemy);
  textSize(120);
  text("BUBBLE CLICKER", 450, 200);
  //play button
  playbutton();
  //options
  optionses();
  //high score count
  textSize(20);
  text("high score: "+hiscore, 450, 550);
  //frillery
  seagrass();
}

//play mode
void play() {
  mode = booping;
}

//options mode
void menu() {
  mode = choices;
}

//play button
void playbutton() {
  if (mouseX > 325 && mouseX < 575 && mouseY > 400 && mouseY < 475) {
    strokeWeight(15);
    stroke(255);
    fill(27, 135, 222);
    rect(325, 400, 250, 75);
  }
    strokeWeight(5);
    stroke(255);
    fill(27, 135, 222);
    rect(325, 400, 250, 75);
    fill(255);
    textSize(40);
    textAlign(CENTER, CENTER);
    textFont(ass);
    text("play", 450, 435);
}

//scenic waves i shouldn't have had time for
void waveywaves() {
  noStroke();
  fill(166, 204, 232, 30);
  beginShape();
  vertex(0, 0);
  vertex(900, 0);
  vertex(900, 500);
  vertex(720, 520);
  vertex(540, 540);
  vertex(300, 545);
  vertex(200, 530);
  vertex(0, 510);
  endShape();

  fill(100, 164, 211, 50);
  beginShape();
  vertex(0, 0);
  vertex(900, 0);
  vertex(900, 200);
  vertex(750, 210);
  vertex(530, 240);
  vertex(240, 230);
  vertex(0, 200);
  endShape();

  fill(200, 80);
  beginShape();
  vertex(0, 450);
  vertex(100, 460);
  vertex(220, 440);
  vertex(350, 450);
  vertex(420, 470);
  vertex(500, 440);
  vertex(610, 460);
  vertex(720, 450);
  vertex(820, 470);
  vertex(900, 460);
  vertex(900, 410);
  vertex(810, 400);
  vertex(720, 420);
  vertex(620, 430);
  vertex(500, 410);
  vertex(390, 420);
  vertex(280, 430);
  vertex(170, 410);
  vertex(40, 420);
  vertex(0, 430);
  endShape();

  fill(124, 174, 227, 60);
  beginShape();
  vertex(0, 100);
  vertex(110, 110);
  vertex(200, 120);
  vertex(310, 110);
  vertex(400, 130);
  vertex(520, 120);
  vertex(630, 100);
  vertex(700, 110);
  vertex(820, 130);
  vertex(900, 120);
  vertex(900, 70);
  vertex(800, 80);
  vertex(690, 60);
  vertex(570, 70);
  vertex(460, 60);
  vertex(330, 80);
  vertex(240, 70);
  vertex(130, 80);
  vertex(50, 60);
  vertex(0, 70);
  endShape();
}

//a stupid joke i also shouldn't have had time for
void redherring1() {
  fish1x = fish1x - 3;
  if (fish1x < -70) {
    fish1x = 940;
  }
  noStroke();
  fill(222, 78, 11);
  pushMatrix();
  translate(fish1x, 100);
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

void redherring2() {
  fish2x = fish2x + 2;
  if (fish2x > 960) {
    fish2x = -40;
  }
  noStroke();
  fill(222, 78, 11);
  pushMatrix();
  translate(fish2x, 320);
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

//the star of the show
void bubble() {
  introx = introx + introvx;
  introy = introy + introvy;
  if (introx == 40 || introx == 860) {
    introvx = introvx * -1;
  }
  if (introy == 40 || introy == 560) {
    introvy = introvy * -1;
  }

  strokeWeight(2);
  stroke(255);
  pushMatrix();
  translate(introx, introy);
  fill(255, 100);
  circle(0, 0, 80);
  fill(255);
  noStroke();
  circle(20, -18, 10);
  popMatrix();
}

//i dont have time for this slkdfhalsjdhskj
void seagrass() {
  fill(48, 77, 53);
  noStroke();
  beginShape();
  vertex(100, 600);
  vertex(90, 550);
  vertex(110, 500);
  vertex(95, 450);
  vertex(105, 400);
  endShape();
  
  pushMatrix();
  translate(-50, 0);
  beginShape();
  vertex(750, 600);
  vertex(745, 550);
  vertex(755, 500);
  vertex(750, 430);
  endShape();
  popMatrix();
  
  fill(85, 134, 94);
  beginShape();
  vertex(800, 600);
  vertex(790, 550);
  vertex(805, 500);
  vertex(795, 450);
  vertex(810, 400);
  vertex(800, 350);
  endShape();
  
  pushMatrix();
  translate(-50, 0);
  beginShape();
  vertex(250, 600);
  vertex(240, 550);
  vertex(255, 500);
  vertex(250, 450);
  endShape();
  popMatrix();
}

//options button
void optionses() {
  if (mouseX > 20 && mouseX < 60 && mouseY > 20 && mouseY < 60) {
    strokeWeight(7);
    stroke(255);
    fill(27, 135, 222);
    rect(20, 20, 40, 40);
  }
    strokeWeight(3);
    stroke(255);
    fill(27, 135, 222);
    rect(20, 20, 40, 40);
    fill(255);
    noStroke();
    rect(30, 28, 20, 5);
    rect(30, 38, 20, 5);
    rect(30, 48, 20, 5);
    
}
