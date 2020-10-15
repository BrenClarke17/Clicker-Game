void intro() {
background(0, 255, 0);
fill(255);
gameover.pause();
theme.play();



//Button Tactile
if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) {
   fill(180);
 } else {
    fill(255);
  }
  
//Button
strokeWeight(5);
stroke(0);
rect(300, 500, 200, 100);
fill(0);
textSize(50);
//Play Game Text
text("PLAY", 400, 550);

//Settings Button (tactile)
 if (dist(mouseX, mouseY, 40, 40) < 32 ) {
strokeWeight(3);
 stroke(255);
 } else { 
   stroke(0); 
   strokeWeight(3);
 }
 // settings button
 
 fill(180);
 circle(40, 40, 75);
 image(gear, 15, 15, 50, 50);
 
 
 
 
 
//Intro Text
fill(0);
textSize(75);
text("CLICKER GAME", 400, 300);
fill(255);
text("CLICKER GAME", 395, 295);


if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) {
   fill(150);
 } else {
    fill(255);
  }

   gameover.rewind();



}

void introClicks() {
if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) {
mode = GAME;
}
  
  if (dist(mouseX, mouseY, 40, 40) < 32 ) {
   mode = OPTIONS;
 }
  
  

}
