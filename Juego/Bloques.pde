cubo[][] cubos = new cubo[18][24];
cubo prueba;
class cubo{
  float x;
  float y;
  float i;
  int ancho = 32;
  cubo(float tempx,float tempy){
    x=tempx*32;
    y=tempy*32;
  }
  void coX(){
    if(jugador.PosiP.x >= x && jugador.PosiP.x <= x + ancho){
     
    }
    stroke(255);
    line(x,y,x+ancho,y);
  }
  
}
