
//im slowy getting caught up!!!! i promise
//although i did start this one quite late as well hehehe
//i am aware that my code is not the most organized as i am very out of time
//also i got carried away a lot and forgot to watch half of the instruction videos
//but i read the requirements and i playtested the crap out of my game so
//i think it works???
//--------------
//now now! my first game
//not counting the vaguely morbid digital ping-pong i made with python a year ago
//every time the ball hit the edge of the screen there would be a fleshy squelch
//when it hit a paddle it would scream like homer simpson
//and when it went out of bounds you would hear the cry of a poor infant
//--------------
//anyways enjoy. im working on making my prologues shorter as well
//but! indulge me
//as i
//fill up these
//lines
//....


import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//in other news i made my own sound effects
//i busted out the ole kazoo
Minim minim;
AudioPlayer theme, over, hit, click;

//modes
int mode;
final int startit = 0;
final int booping = 1;
final int eek = 2;
final int death = 3;
final int choices = 4;

int fish1x, fish2x, introx, introy, introvx, introvy, ffish1x, ffish2x, score, hiscore, lives;
float x, y, vx, vy, bubsize, testx, testy, sizex, speedx;
PFont ass, blassphemy;
Boolean ogon, emoon, blueon;

void setup() {
  size (900, 600);
  mode = startit;
  ass = createFont("sketchy in snow.otf", 40);
  blassphemy = createFont("Ka Blam.ttf", 80);

  fish1x = 900;
  fish2x = 0;
  introx = 700;
  introy = 500;
  introvx = 2;
  introvy = 2;
  ffish1x = 4000;
  ffish2x = -800;
  testx = 0;
  testy = 0;
  x = 450;
  y = 300;
  vx = 2;
  vy = 2;
  score = 0;
  hiscore = 0;
  lives = 3;
  //bubble vars
  ogon = true;
  emoon = false;
  blueon = false;
  speedx = 150;
  sizex = 650;
  bubsize = 80;
  //minim stuffs
  minim = new Minim(this);
  theme = minim.loadFile("theme.mp3");
  over = minim.loadFile("gameover.mp3");
  click = minim.loadFile("click.mp3");
  hit = minim.loadFile("hit.mp3");
}

void draw() {
  if (mode == startit) {
    startit();
  } else if (mode == booping) {
    booping();
  } else if (mode == eek) {
    eek();
  } else if (mode == death) {
    death();
  } else if (mode == choices) {
    choices();
  } else {
    println("nooooo why is mode" + mode);
  }
}
