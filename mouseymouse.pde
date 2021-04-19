
void mouseReleased() {
  //resetting
  if (mode == startit && mouseX > 325 && mouseX < 575 && mouseY > 400 && mouseY < 475) {
    play();
    lives = 3;
    score = 0;
  }
  //options button
  else if (mode == startit && mouseX > 20 && mouseX < 60 && mouseY > 20 && mouseY < 60) {
    menu();
  }
  //from options to intro
  else if (mode == choices && mouseX > 20 && mouseX < 60 && mouseY > 20 && mouseY < 60) {
    returntointro();
  }
  
  //bubble selects
  if ( mode == choices && mouseX > 200 && mouseX < 300 && mouseY > 245 && mouseY < 345) {
    ogon = true;
    emoon = false;
    blueon = false;
  }
  else if (mode == choices && mouseX > 400 && mouseX < 500 && mouseY > 245 && mouseY < 345) {
    emoon = true;
    ogon = false;
    blueon = false;
  }
  else if (mode == choices && mouseX > 600 && mouseX < 700 && mouseY > 245 && mouseY < 345) {
    blueon = true;
    ogon = false;
    emoon = false;
  }
  
  //size and speed sliders click function
  if (mode == choices && mouseX > 500 && mouseX < 800 && mouseY > 190 && mouseY < 210) {
    sizex = mouseX;
  }
  if (mode == choices && mouseX > 100 && mouseX < 400 && mouseY > 190 && mouseY < 210) {
    speedx = mouseX;
  }
  
  //pause game
  if (mode == booping && mouseX > 430 && mouseX < 470 && mouseY > 20 && mouseY < 60) {
    getpaused();
  }
  //resume game
  else if (mode == eek && mouseX > 430 && mouseX < 470 && mouseY > 20 && mouseY < 60) {
    keepplaying();
  }
  //game over screen to intro
  if (mode == death && mouseX > 325 && mouseX < 575 && mouseY > 475 && mouseY < 575) {
    gg();
  }
}

void mousePressed() {
  //this used to be under the mouseReleased but every time you started a game
  //it would make it 2 lives so here we are :(
  if (mode == booping && dist(mouseX, mouseY, x, y) > bubsize/2 && dist(mouseX, mouseY, 450, 20) > 40) {
    lives = lives - 1;
    hit.rewind();
    hit.play();
  }
  //scoring
  if (mode == booping && dist(mouseX, mouseY, x, y) < bubsize/2) {
    score = score + 1;
    click.rewind();
    click.play();
  }
}

void mouseDragged() {
  //size and speed adjustments
  if (mode == choices && mouseX > 500 && mouseX < 800 && mouseY > 180 && mouseY < 220) {
    sizex = mouseX;
  }
  if (mode == choices && mouseX > 100 && mouseX < 400 && mouseY > 180 && mouseY < 220) {
    speedx = mouseX;
  }
}
