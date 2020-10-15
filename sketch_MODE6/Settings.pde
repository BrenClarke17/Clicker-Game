void Options() {
 background(180);
 fill(0);
 text("OPTIONS", 400, 130);
 fill(255);
 text("OPTIONS", 395, 125);
 
 
 

 
 rect(575, 200, 150, 150); 
  
 
 //Button 1
 
 if (mouseX > 75 && mouseX < 225 && mouseY > 200 && mouseY < 350) {
   stroke(0, 128, 162);
 } else {
    stroke(0);
  
  }
  rect(75, 200, 150, 150); 
  image(pineapple, 75, 200, 150, 150);
  
  //Button 2
  
  if (mouseX > 325 && mouseX < 475 && mouseY > 200 && mouseY < 350) {
   stroke(0, 128, 162);
 } else {
    stroke(0);
  }
   rect(325, 200, 150, 150); 
    image(apple, 325, 200, 150, 150);
   
   //Button 3
   
   if (mouseX > 575 && mouseX < 725 && mouseY > 200 && mouseY < 350) {
   stroke(0, 128, 162);
 } else {
    stroke(0);
  }
    rect(575, 200, 150, 150); 
    image(banana, 575, 200, 150, 150);
  
  
  //Indicator Button
  stroke(0);
 if(selected == 1) {
image(pineapple, 320, 585, d, d);
} else if (selected == 2) {
 image(apple, 320, 585, d, d); 
} else if (selected == 3) {
 image(banana, 320, 585, d * 2, d * 2);
}

  
   
  // Slider 
   
  stroke(0);
  strokeWeight(5);
  line(100, 600, 100, 750);
  d = map(sliderY, 600, 750, 200, 75);
  circle(100, sliderY, 50);

 // strokeWeight(thickness);
  
  
 
 
 // Done Button
  stroke(0);
  fill(0);
 textSize(50);
 text("DONE", 600, 650);
 
 if (mouseX > 500 && mouseX < 700 && mouseY > 600 && mouseY < 700) {
   fill(150);
 } else {
    fill(255);
  }
  rect(500, 600, 200, 100);
  
  fill(0);
 textSize(50);
 text("DONE", 600, 650);
  
  

}


void optionsClicks() {
  if (mouseX > 500 && mouseX < 700 && mouseY > 600 && mouseY < 700) {
   mode = INTRO;
}

if (mouseX > 75 && mouseX < 225 && mouseY > 200 && mouseY < 350)  {
  selected =1;
}

if (mouseX > 325 && mouseX < 475 && mouseY > 200 && mouseY < 350) {
selected =2;
}

if (mouseX > 575 && mouseX < 725 && mouseY > 200 && mouseY < 350) {
selected =3;

}



}




void mouseDragged() {
  
  if (mode == OPTIONS && mouseY > 600 && mouseY < 750 && mouseX > 50 && mouseX < 150) {
    sliderY = mouseY;
    
  }
  
} 
