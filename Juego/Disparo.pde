disparo[] bam = new disparo[3];
class disparo{  
  float x;
  float y;

  void sitio(){    
    if( key =='j' && x >= 0 && x<= width){
      x += 5;
      ellipse(x,y,10,10);
      delay(5);
    }
    else{
     
    }
  }
  void bam(){
    
  }
}
