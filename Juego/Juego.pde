PImage fondo;
float x=0;
float y=0;

void setup(){
  size(800,600);
  imagenes();
  PersLoad();
  EsceLoad();
}
void draw(){   
  image(fondo,x,0);
  Hut();
  jugador.generador();
    
}
