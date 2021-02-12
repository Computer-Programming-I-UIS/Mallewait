ArrayList <disparo> balas;
class disparo{  
  PVector Posi= new PVector(2,2);
  int y = 6;
  
  void Movimiento(int dir){
    if( jugador.Shot ){
      Posi.x += y * dir;
      ellipse(Posi.x,Posi.y,10,10);
    } else if(Posi.x <= 0 && Posi.y >= width){
    } else { balas.remove(1);}
    
  }
  void controles(){
    if(jugador.Izq){
      Movimiento(-1);
    }
    if(jugador.Der){
      Movimiento(1);
    }
  }
}
