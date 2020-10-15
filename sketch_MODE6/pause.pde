void pause() {
  theme.pause();
  
 //Pause text
 textSize(100);
 fill(130);
 text("PAUSED", 400, 365);
 fill(255);
 text("PAUSED", 395, 360);
 
 
 //Unpause Button
 stroke(0);
 fill(180);
 strokeWeight(3);
 circle(40, 40, 75);
 triangle(25, 20, 25, 60, 60, 40);
 
 
}

void pauseClicks() {
  if (dist(mouseX, mouseY, 40, 40) < 32 ) {
   mode = GAME;
   theme.play();
  }
}
