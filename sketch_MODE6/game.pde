void game() {
 background(0);
 textSize(20);
 text("SCORE:" + score, 400, 130);
 text("LIVES:" + lives, 400, 160);
 
 //Pause button 
 stroke(0);
 fill(180);
 strokeWeight(3);
 circle(40, 40, 75);
 line(30, 20, 30, 60);
 line(50, 20, 50, 60);
 
 
 
 //target
 strokeWeight(5);
 stroke(18, 94, 222);
fill(18, 199, 222);

circle(x, y, d); // 75
if(selected == 1) {
image(pineapple, x-d/2, y-d/2,d-10,d-10);
} else if (selected == 2) {
  image(apple, x-d/2, y-d/2,d-10,d-10); 
} else if (selected == 3) {
  image(banana, x-d/2, y-d/2,d-10,d-10); 
}
  
  
  
  
  
  
  
x = x + vx;
y = y + vy;


if (y < d/2 || y > height -d/2) vy = vy * -1;
if (x < d/2 || x > width-d/2) vx = vx * -1;

}


void gameClicks() {
 if (dist(mouseX, mouseY, x, y) < d/2) {
 score = score + 1;
 vx = vx * 1.1;
 vy = vy * 1.1;
 coin.rewind();
 coin.play();
 } else if (dist(mouseX, mouseY, 40, 40) < d/2 ) {
   mode = PAUSE;
 }  else {
  lives = lives -1;
  bump.rewind();
  bump.play();
 if (lives == 0) {
   mode = GAMEOVER;
 highscore = max(highscore, score);

 
 }
 }
}
