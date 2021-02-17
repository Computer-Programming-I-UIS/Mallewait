ArrayList <disparo> balas;
class disparo{  
  PVector Posi= new PVector(2,2);
  int y = 6;
  int dir = 1;
  boolean T;
  disparo(){
    Posi.x = jugador.PosiP.x;
    Posi.y = jugador.PosiP.y + 32;
    if(jugador.VisionI){T = true;}
    if(jugador.VisionD){T = false;}
  }
  void gen(){
    controles();
    Movimiento();
    display();
  }
  void Movimiento(){    
      Posi.x += y * dir;      
  }
  void controles(){
    if(T){
      dir=-1;
    }
    if(!T){
      dir=1;
    }
  }
  void display(){
    fill(Posi.x,Posi.y,Posi.x/100);
    circle(Posi.x,Posi.y,10);
  }
}
void bam(){
  for(int i = balas.size() - 1; i >= 0; i--){
    disparo bala = balas.get(i);
    bala.gen();
    if(bala.Posi.x <= 0 || bala.Posi.x >= width ){
      balas.remove(i);
    }     
  }
}
