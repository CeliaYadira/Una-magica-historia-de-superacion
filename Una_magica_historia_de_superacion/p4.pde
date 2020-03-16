class P4{
void nivel2(){
  image(img4,0,0);
  
  int xstart =  constrain(mouseX -w/2, 0, img7.width);
  int ystart =  constrain(mouseY -w/2, 0, img7.height);
  int xend =  constrain(mouseX +w/2, 0, img7.width);
  int yend =  constrain(mouseY +w/2, 0, img7.height);
  int matrixsize =3;
  loadPixels();
  for(int x= xstart; x<xend; x++){
    for (int y= ystart; y<yend; y++){
      color c = convolution(x, y, matrix, matrixsize, img7);
      int loc = x+y*img7.width;
      pixels[loc] = c;
      
    }
  }
  updatePixels();
  
  if(mousePressed){
    if((mouseX<820&& mouseX>560)&& (mouseY<590 && mouseY >500))
    p=5;
  }
  
}
}
