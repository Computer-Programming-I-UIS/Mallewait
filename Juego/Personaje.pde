PImage CamDere;
PImage CamIzqu;
personajes jugador;

class personajes{
  
  float x;
  float y;
  float z;
  int seccion;
  int vidas = 4;
  
  personajes(float tempx, float tempy, int tempClass){
    x = tempx;
    y = tempy;
    seccion = tempClass;
  }
  void generador(){
    switch(seccion){
      case 1:
      imagen();
      player();
      aciones();
      break;
      case 2:
      break;
      case 3:
      break;
    }
  }
  float player(){
    float mov;
    if( keyPressed == true ){
      switch(key){
        case 'd':
        x+=2;
        break;
        case 'a':
        x-=2;
        break;
      }
    }
    mov = x;
    return mov;
  }
  float aciones(){
    float action;
    if(keyPressed == true){
      switch(key){
        case 'w':
        y--;
        break;
        case 's':
        y++;
        break;
      }
    }
    action=y;
    return action;
  }
  void imagen(){
    switch(key){
     case 'd':
     image(CamDere,x,y);
     break;
     case 'a':
     image(CamIzqu,x,y);
     break;
     default:
     image(CamDere,x,y);
     break;   
    }
  }
  int vidad(){
    return vidas;
  }
}
