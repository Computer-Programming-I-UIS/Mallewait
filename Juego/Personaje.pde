PImage CamDere;
PImage CamIzqu;
PVector PosiP = new PVector(4,4);
PVector VelP = new PVector(5,1);
personajes jugador;

class personajes{
  boolean Der=false,Izq=false,Jump=false,Proud=false,Floor=true,Shot=false;
  float x;
  float y;
  float z;
  int seccion;
  int vidas = 4;
  int t = 0;
  int salas = 1;
  int h = 64;
  float angle = 0;
  int gravedad = 1;
  float multi = 0.1;
  
  personajes(float tempx, float tempy, int tempClass){
    PosiP.x = tempx;
    PosiP.y  = tempy;
    seccion = tempClass;
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
    //Si esta en la sala uno debe haber una restriccion de movimiento
      //Esta en la sala?
        //Si
          //Esta cerca del borde de la izquierda?
            //Si, entonces nose puede seguir moviendo a la izquierda
            //No, entonces se puede mover libremente
    switch(salas){
      case 1:
        if( Izq == true && PosiP.x <= 10){ } 
        else if(Izq || Der){
          PosiP.x += VelP.x*dir;
        }
      break;
      case 2:
      case 3:
      PosiP.x += VelP.x*dir;
      break;
      case 4:
      if( Der == true && PosiP.x >= width - 10){ } 
      else if(Izq || Der){
          PosiP.x += VelP.x*dir;
        }
      break;
    }
      x = PosiP.x + 22;
      y = PosiP.y + 32;
    return PosiP.x;
  }
  float Accion(){
    //Quiero saltar pero no puedo seguir subiendo que hago?
      //Está en tierra firme o en un objeto?
        //Si, entonces se empieza a elevar
          //Hasta que altura llego?
            //El doble o triple de la altura del personaje
        //No, entonces no puede elevarse o subir,
    if(PosiP.y >= height/2 ){
      Floor = true;
      multi = 0;
    } else {
      Floor = false;
      multi+=0.01;
    }
    print(multi + " Fin");

    if(Jump){
      PosiP.y = PosiP.y + (gravedad*multi - VelP.y);
    } else {
      PosiP.y = PosiP.y + (gravedad*multi);
    }
    
    return PosiP.y;
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
      image(CamDere,x,y);
      break;
      case 'a':
      case 'A':
      case LEFT:
      image(CamIzqu,x,y);
      break;
      default:
      image(CamDere,x,y);
      break;
    }
  }
  int Cambiar(){
    if(PosiP.x >= width && salas != 4){
      salas ++;
      PosiP.x = 10;
    } else if(PosiP.x <= 0 && salas != 1){
      salas --;
      PosiP.x = width - 10;
    }
    return salas;
  }
}
