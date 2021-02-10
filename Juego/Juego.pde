PImage fondo;
float x=0;
float y=0;
int Sala = 1;
PFont pixelFont;

void setup(){
  size(768,576);
  imagenes();
  PersLoad();
  pixelFont = createFont("fonts/monogram_extended.ttf",45);
  jugar = new Botones(200,1);
  opciones = new Botones(250,2);
  fin = new Botones(480,3);
  about = new Botones(300,4);
  volver = new Botones(192,0);
}
void draw(){
  background(0);
  surface.setTitle("Mallewaitt");
  pantalla();
  SwitcScreen();
}
