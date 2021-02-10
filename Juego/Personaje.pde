PImage CamDere;
PImage CamIzqu;
PVector PosiP = new PVector(4,4);
PVector VelP = new PVector(5,3);
personajes jugador;

class personajes{
  boolean Der=false,Izq=false,Jump=false,Proud=false;
  float x;
  float y;
  float z;
  int seccion;
  int vidas = 4;
  int t = 0;
  int salas = 1;
  
  personajes(float tempx, float tempy, int tempClass){
    x = tempx;
    y = tempy;
    seccion = tempClass;
    PosiP.x = x;
    PosiP.y = y;
  }
  
  void generator(){
    teclado();
    display();
    Accion();
  }
  int vidad(){
    return vidas;
  }
  float Mov(int dir){
    PosiP.x += VelP.x*dir;
    return PosiP.x;
  }
  void Accion(){   
    if(PosiP.y <= height/2 && Jump){
       PosiP.y -= VelP.y;
    }    
  }
  void teclado(){
    if(Izq){
      Mov(-1);
    }
    if(Der){
      Mov(1);
    }
  }
  void display(){
    switch(key){
      case 'd':
      case 'D':
      case RIGHT:
      image(CamDere,PosiP.x,PosiP.y);
      break;
      case 'a':
      case 'A':
      case LEFT:
      image(CamIzqu,PosiP.x,PosiP.y);
      break;
      default:
      image(CamDere,PosiP.x,PosiP.y);
      break;
    }
  }
  int Cambiar(){
    if(PosiP.x == 0 || PosiP.x == width){
      salas ++;
      PosiP.x = width/2;
    }
    return salas;
  }
}
