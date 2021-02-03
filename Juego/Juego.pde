PImage fondo;
PImage CamDere;
PImage CamIzqu;
float x=0;
float y=0;
void setup(){
  size(1000,650);
  fondo = loadImage("Fondo.png");
  CamDere = loadImage("Base-soldado.png");
  CamIzqu = loadImage("Base-soldado-copia.png");
}
void draw(){
  if(keyPressed == true){
    switch(key){
      case 'd':
      x-=2;
      y=-x;
      break;
      case 'a':
      x+=2;
      y=-x;
      break;
    }
  }
  image(fondo,x,0);
  switch(key){
    case 'd':
    image(CamDere,y,20);
    break;
    case 'a':
    image(CamIzqu,y,20);
    break;
  }
  
}
