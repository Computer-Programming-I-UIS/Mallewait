habitaciones a1;
habitaciones a2;
habitaciones a3;
class habitaciones{
  float x = 240;
  float y = 64;
  float t;
  float r;
  int e;
  int w;
  habitaciones(int tempe,int tempw){
    e = tempe;
    w = tempw;
  }
  
  float hEscenario(){
    switch(e){
      case 1:
      t=y;
      break;
      case 2:
      t=2*y;
      break;
      case 3:
      t=3*y;
      break;
    }
    return t;
  }
  float wEscenario(){
    switch(w){
      case 1:
      r=x;
      break;
      case 2:
      r=2*x;
      break;
      case 3:
      r=3*x;
      break;
    }
  return r;
  }
}
