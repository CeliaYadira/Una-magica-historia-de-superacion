class P1{
void inicio(){
  image(img1,0,0);
  
  noStroke();
  fill(224,160,0);
  rect(680,600, 350,50);
  fill(255);
  textFont(font);
  text("Haz click aquí para continuar", 685,630);
  
 
  if(mousePressed){
    if((mouseX<1030&& mouseX>680)&& (mouseY<650 && mouseY >600))
    p=2;
  }

  
  if((mouseX<1030&& mouseX>680)&& (mouseY<650 && mouseY >600)){
    noStroke();
    fill(255,237,70);
    rect(680,600, 350,50);
    fill(255);
    textFont(font);
    text("Haz click aquí para continuar", 685,630);
  }   
}
}
