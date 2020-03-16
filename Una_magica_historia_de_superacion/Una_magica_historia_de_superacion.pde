int w =120;                 
float [][] matrix = {{-2, -1, 0},
                     {-1,  1, 1},
                     { 0,  1, 2}};


                     
int p=1;

PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage img7;

P2 p2;
P1 p1;
P3 p3;
P4 p4;
P5 p5;


PFont  font;

void setup(){
  size(1280,720);
  
    p1 = new P1();
    p2 = new P2();
    p3 = new P3();
    p4 = new P4();
    p5 = new P5();
    
    img1 = loadImage("inicio.jpg");
    img2 = loadImage("instrucciones.jpg");
    img3 = loadImage("nivel1.jpg");
    img4 = loadImage("nivel2.jpg");
    img5 = loadImage("final.jpg");
    img6 = loadImage("frase1.jpg");
    img7 = loadImage("frase2.jpg");
    
    font = createFont("Photoshoot.ttf", 20);
}

void draw() {
  
  if (p==1){
    p1.inicio();
  }
  if (p==2){
    p2.instrucciones();
  }
  
  if (p==3){
    p3.nivel1();
  }
  
  if (p==4){
    p4.nivel2();
  }
  
  if (p==5){
    p5.nivel2();
  }
}

color convolution(int x, int y, float[][] matrix, int matrixsize, PImage img){
    float rtotal =0.0;
    float gtotal =0.0;
    float btotal =0.0;
    int offset = matrixsize /2;
    for(int i = 0; i< matrixsize; i++){
      for (int j = 0; j< matrixsize; j++){
        int xloc = x+i-offset;
        int yloc = y+j-offset;
        int loc = xloc + img.width*yloc;
        loc=constrain(loc,0,img.pixels.length-1);
        
        rtotal += (red(img.pixels[loc])*matrix[i][j]);
        gtotal += (green(img.pixels[loc])*matrix[i][j]);
        btotal += (blue(img.pixels[loc])*matrix[i][j]);
      }
    }
    
    rtotal = constrain(rtotal, 0, 255);
    gtotal = constrain(gtotal, 0, 255);
    btotal = constrain(btotal, 0, 255);
    return color(rtotal, gtotal, btotal);
}
