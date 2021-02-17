enemigo primero;
class enemigo{
  float x;
  float y;
  int clase;
  float salud;
  float atk;
  float speed;
  boolean MirarD = false, MirarI = false;
  enemigo(float tempx, float tempy, int tempC){
    x=tempx;
    y=tempy;
    clase=tempC;
    speed=4;
  }
  void gen(){
    clases();
    mirar();
    atakar();
    display();
  }
  void clases(){
    switch(clase){
      case 1://clase ligera
        salud=1;
        atk=1;
      break;
      case 2://clase normal
        salud=3;
        atk=1;
      break;
      case 3://clase pesada
        salud=6;
        atk=2;
      break;
    }
  }
  void mirar(){
    if(jugador.PosiP.y >= y - 12 && jugador.PosiP.y <= y +12){
      if(jugador.PosiP.x >= x - 200 && jugador.PosiP.x <x){
        MirarI = true;
        MirarD = false;
      } 
      else if(jugador.PosiP.x <= x + 200 && jugador.PosiP.x > x){
        MirarD = true;
        MirarI = false;
      }
    }
  }
  void atakar(){
    if(MirarD || MirarI){
      hostiles.add(new disparo(x,y,MirarD,MirarI));
    }
  }
  void display(){
    switch(clase){
      case 1://clase ligera
      if(MirarD){image(EnLigDer,x,y);} 
      else if(MirarI){image(EnLigIzq,x,y);}
      else {image(EnLigIzq,x,y);}
      break;
      case 2://clase normal
      if(MirarD){image(EnNorDer,x,y);} 
      else if(MirarI){image(EnNorIzq,x,y);}
      else {image(EnNorIzq,x,y);}
      break;
      case 3://clase pesada
      if(MirarD){image(EnPesDer,x,y);} 
      else if(MirarI){image(EnPesIzq,x,y);}
      else {image(EnPesIzq,x,y);}
      break;
    }
  }
}
