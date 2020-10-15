void gameover() {
  background(255, 0, 0);
  fill(0);
  textSize(75);
  text("GAMEOVER", 400, 300);
  fill(255);
  text("GAMEOVER", 395, 295);  
  stroke(0);
  rect(300, 550, 200, 100);
  fill(0);
  
  //High Score
   textSize(50);
  fill(0);
  text("High Score: " + highscore, 400, 450);
  fill(255);
  text("High Score: "  + highscore, 395, 445); 
  
  
 
 //Restart button tactile
 if (mouseX > 300 && mouseX < 500 && mouseY > 550 && mouseY < 650) {
strokeWeight(3);
fill(110);
 } else { 
   fill(0); 
   strokeWeight(3);
 }
 
 
 
 //Restart button 
 stroke(0);
  rect(300, 550, 200, 100);
  fill(255);
  textSize(40);
  text("RESTART", 400, 600);
  theme.pause();
 
gameover.play();
 theme.rewind();
  
  
}

void gameoverClicks() {
if (mouseX > 300 && mouseX < 550 && mouseY > 500 && mouseY < 650) {
mode = INTRO;
score = 0;
lives = 5;
 x = width/2;
  y = height/2;
  vx = random(-3, 3);
  vy = random(-3, 3);
  
  
  
}
}
