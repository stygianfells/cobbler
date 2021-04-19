
void choices() {
  //fancies
  background(30, 87, 147);
  waveywaves();
  seagrass();
  //heading
  fill(80, 80);
  textSize(35);
  text("options", 450, 55);
  fill(255);
  textSize(30);
  text("options", 450, 50);
  fill(80, 80);
  noStroke();
  rect(50, 110, 800, 300);
  //size and speed sliders
  speedy();
  sizey();
  //bubble choice
  bubbleselect();
  //bubble display
  bubbledisplay();
  //back button
  noStroke();
  fill(80, 80);
  rect(10, 25, 60, 45);
  backbutton();
}

//back to intro
void returntointro() {
  mode = startit;
}

//speed slider
void speedy() {
  fill(255);
  textSize(15);
  text("-   bubble speed   +", 250, 155);
  strokeWeight(10);
  stroke(255);
  line(100, 200, 400, 200);
  
  stroke(255);
  strokeWeight(5);
  fill(150);
  circle(speedx, 200, 20);
  vx = map(speedx, 100, 400, 1, 10);
  vy = vx;
}

//size slider
void sizey() {
  fill(255);
  textSize(15);
  text("-   bubble size   +", 650, 155);
  strokeWeight(10);
  stroke(255);
  line(500, 200, 800, 200);
  
  stroke(255);
  strokeWeight(5);
  fill(150);
  circle(sizex, 200, 20);
  bubsize = map(sizex, 500, 800, 50, 150);
  
}

//bubble cosmetics
void bubbleselect() {
  fill(255);
  textSize(15);
  text("the OG", 250, 385);
  text("emo", 450, 385);
  text("blue", 650, 385);

  if (mouseX > 200 && mouseX < 300 && mouseY > 245 && mouseY < 345) {
    noFill();
    stroke(255, 150);
    strokeWeight(5);
    square(195, 240, 110);
  } else if (mouseX > 400 && mouseX < 500 && mouseY > 245 && mouseY < 345) {
    noFill();
    stroke(255, 150);
    strokeWeight(5);
    square(395, 240, 110);
  } else if (mouseX > 600 && mouseX < 700 && mouseY > 245 && mouseY < 345) {
    noFill();
    stroke(255, 150);
    strokeWeight(5);
    square(595, 240, 110);
  }

  //og bub
  strokeWeight(2);
  stroke(255);
  pushMatrix();
  translate(250, 295);
  fill(255, 100);
  circle(0, 0, 80);
  fill(255);
  noStroke();
  circle(20, -18, 10);
  popMatrix();
  //emo bubble
  strokeWeight(2);
  stroke(0);
  pushMatrix();
  translate(450, 295);
  fill(0, 100);
  circle(0, 0, 80);
  fill(150);
  noStroke();
  circle(20, -18, 10);
  popMatrix();
  //blue bub
  strokeWeight(2);
  stroke(29, 18, 180);
  pushMatrix();
  translate(650, 295);
  fill(39, 100, 227, 100);
  circle(0, 0, 80);
  fill(139, 187, 237);
  noStroke();
  circle(20, -18, 10);
  popMatrix();
}

//bubble selection preview
void bubbledisplay() {
  if (ogon == true) {
    strokeWeight(2);
    stroke(255);
    pushMatrix();
    translate(450, 500);
    fill(255, 100);
    circle(testx, testy, bubsize);
    fill(255);
    noStroke();
    circle(testx+bubsize/4, testy-bubsize/4.2, bubsize/8);
    popMatrix();
    
    noFill();
    stroke(255);
    strokeWeight(5);
    square(195, 240, 110);
  } else if (emoon == true) {
    strokeWeight(2);
    stroke(0);
    pushMatrix();
    translate(450, 500);
    fill(0, 100);
    circle(testx, testy, bubsize);
    fill(150);
    noStroke();
    circle(testx+bubsize/4, testy-bubsize/4.2, bubsize/8);
    popMatrix();
    
    noFill();
    stroke(255);
    strokeWeight(5);
    square(395, 240, 110);
  } else if (blueon == true) {
    strokeWeight(2);
    stroke(29, 18, 180);
    pushMatrix();
    translate(450, 500);
    fill(39, 100, 227, 100);
    circle(testx, testy, bubsize);
    fill(139, 187, 237);
    noStroke();
    circle(testx+bubsize/4, testy-bubsize/4.2, bubsize/8);
    popMatrix();
    
    noFill();
    stroke(255);
    strokeWeight(5);
    square(595, 240, 110);
  }
}

void backbutton() {
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
  textSize(25);
  text("<", 40, 35);
}
