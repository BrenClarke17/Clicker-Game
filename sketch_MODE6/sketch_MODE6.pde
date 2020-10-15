import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


//notes
//make variables for the images ex Pimage1, pimage 2
//




//Brennan 
//Cookie clicker game thing

//Music variables
Minim minim;
AudioPlayer theme, coin, bump, gameover;


// Mode variables
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;
PImage gear;



//target variables
float x, y; // targets position
float vx, vy; // targets speed
int score, lives;
float d;
int highscore;
float thickness;
int sliderY;
PImage pineapple;
PImage apple;
PImage banana; 
int selected;
void setup() {
  size(800, 800);
  mode = INTRO;
  textAlign(CENTER, CENTER);

  
  
  //Image pause thing
  gear = loadImage("gear.png");
  pineapple = loadImage("pineapple.png");
  apple = loadImage("apple.png");
  banana = loadImage("banana.png");
  
  //initialize target
  x = width/2;
  y = height/2;
  d = 75;
  vx = random(-3, 3);
  vy = random(-3, 3);
  score = 0;
  lives = 5;
  sliderY = 700;
  
  //Music Setup
  minim = new Minim(this);
  theme = minim.loadFile("mario bros theme.mp3");
  gameover = minim.loadFile("gameover.wav");
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  
}



void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTIONS) {
    Options();
  println("Error: Mode = " + mode);
 }




}
