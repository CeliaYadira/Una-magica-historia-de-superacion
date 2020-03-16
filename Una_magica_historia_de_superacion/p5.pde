class P5{
void nivel2(){
  image(img5,0,0);
  
  noStroke();
  fill(224,160,0);
  rect(1000,600, 150,50);
  fill(255);
  textFont(font);
  text("Salir", 1045,635);
 
  if(mousePressed){
    if((mouseX<1150&& mouseX>1000)&& (mouseY<650 && mouseY >600))
    exit();
  }
  
  if((mouseX<1150&& mouseX>1000)&& (mouseY<650 && mouseY >600)){
    noStroke();
    fill(255,237,70);
    rect(1000,600, 150,50);
    fill(255);
    textFont(font);
    text("Salir", 1045,635);
  }
  
}
}
