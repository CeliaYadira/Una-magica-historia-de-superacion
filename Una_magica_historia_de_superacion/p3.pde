class P3{
void nivel1(){

  image(img3,0,0);  
  
  int xstart =  constrain(mouseX -w/2, 0, img6.width);
  int ystart =  constrain(mouseY -w/2, 0, img6.height);
  int xend =  constrain(mouseX +w/2, 0, img6.width);
  int yend =  constrain(mouseY +w/2, 0, img6.height);
  int matrixsize =3;
  loadPixels();
  for(int x= xstart; x<xend; x++){
    for (int y= ystart; y<yend; y++){
      color c = convolution(x, y, matrix, matrixsize, img6);
      int loc = x+y*img6.width;
      pixels[loc] = c;
      
    }
  }
  updatePixels();
  
    if(mousePressed){
    if((mouseX<1170&& mouseX>930)&& (mouseY<487 && mouseY >422))
    p=4;
  }
  
}
}
