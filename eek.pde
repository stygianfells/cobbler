
void eek() {
  fill(255);
  textSize(30);
  text("game paused", 450, 300);
  //resume
  continueee();
}

//mode switch
void keepplaying() {
  mode = booping;
}

//keep playing
void continueee() {
  if (mouseX > 430 && mouseX < 470 && mouseY > 20 && mouseY < 60) {
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
  textSize(20);
  text(">", 450, 35);
  
}
