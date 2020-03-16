class P2{
void instrucciones(){
  image(img2,0,0);
  
  noStroke();
  fill(224,160,0);
  rect(142,608, 350,50);
  fill(255);
  textFont(font);
  text("Haz click aquí para continuar", 145,640);
  
  if(mousePressed){
    if((mouseX<492&& mouseX>142)&& (mouseY<658 && mouseY >608))
    p=3;
  }

  
  if((mouseX<492&& mouseX>142)&& (mouseY<658 && mouseY >608)){
    noStroke();
    fill(255,237,70);
    rect(142,608, 350,50);
    fill(255);
    textFont(font);
    text("Haz click aquí para continuar", 145,640);
  }
   
}
}
