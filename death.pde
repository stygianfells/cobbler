
void death() {
  //nice nices
  background(30, 87, 147);
  waveywaves();
  seagrass();
  //eulogy
  fill(255);
  textSize(45);
  text("game over!", 450, 150);
  //the box of judgement
  pushMatrix();
  translate(0, -75);
  fill(80, 80);
  rect(100, 300, 700, 200);
  fill(255);
  textSize(20);
  text("score: "+score, 450, 350);
  text("high score: "+hiscore, 450, 450);
  popMatrix();
  //angels of judgement
  fishjudgement();
  doned();
}

//go back to intro
void gg() {
  mode = startit;
}

void fishjudgement() {
  noStroke();
  fill(222, 78, 11);
  pushMatrix();
  translate(200, 150);
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

  noStroke();
  fill(222, 78, 11);
  pushMatrix();
  translate(700, 150);
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

//back to intro screen
void doned() {
  noStroke();
  fill(80, 80);
  rect(310, 485, 280, 80);
  if (mouseX > 325 && mouseX < 575 && mouseY > 475 && mouseY < 575) {
    strokeWeight(15);
    stroke(255);
    fill(27, 135, 222);
    rect(325, 475, 250, 75);
  }
  
  strokeWeight(5);
  stroke(255);
  fill(27, 135, 222);
  rect(325, 475, 250, 75);
  fill(255);
  textSize(30);
  text("quit", 450, 510);
}
