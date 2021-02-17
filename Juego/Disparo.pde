ArrayList <disparo> balas;
ArrayList <disparo> hostiles;
class disparo{  
  PVector Posi= new PVector(2,2);
  int y = 6;
  int dir = 1;
  boolean T;
  disparo(float tempx, float tempy, boolean d, boolean i){
    Posi.x = tempx;
    Posi.y = tempy;
    if(i){T = true;}
    if(d){T = false;}
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
    circle(Posi.x,Posi.y,3);
  }
}
void bam(){
  for(int i = balas.size() - 1; i >= 0; i--){
    disparo bala = balas.get(i);
    bala.gen();
    if(bala.Posi.x <= 0 || bala.Posi.x >= width ){
      balas.remove(i);
    }     
  } for(int i = hostiles.size() - 1; i >= 0; i--){
    disparo hostil = hostiles.get(i);
    hostil.gen();
    if(hostil.Posi.x <= 0 || hostil.Posi.x >= width ){
      hostiles.remove(i);
    }
  }  
}
