//Este apartado es para cuando el personaje este en ciertos sitios la camara se comporte de una o otra manera
PImage Hui,Pi;
class camara{
  float x;
  float y;
  float T;
  
  void primario(){
  }
  void movimiento(){
  }
  
}
void Hut(){
    image(Hui,0,0);
      image(Pi, 5,5);
    switch(jugador.vidad()){
      case 0:
      ellipse(20,80,20,20);
      break;
      case 1:
      ellipse(40,70,20,20);
      break;
      case 2:
      ellipse(40,70,20,20);
      ellipse(60,60,20,20);
      break;
      case 3:
      ellipse(20,80,10,10);
      ellipse(40,75,10,10);
      ellipse(60,70,10,10);
      break;
      case 4:
      ellipse(20,80,10,10);
      ellipse(40,75,10,10);
      ellipse(60,70,10,10);
      ellipse(80,65,10,10);
      break;
    }
  }
