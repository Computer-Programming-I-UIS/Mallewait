int Pantalla = 0;
void SwitcScreen(){
  if(jugar.funcion() == 1){
    Pantalla = 1;
  } else if(about.funcion() == 4 || opciones.funcion() == 2  || fin.funcion() == 3){
    image(Manito,mouseX+46,mouseY + 22);
    textFont(pixelFont);
    fill(255);
    text("Aun no funciona",mouseX+40,mouseY);
  }
}
void pantalla(){
  switch(Pantalla){
    case 0://Pantalla de inicio
      image(Inicio,0,0);
      jugar.generador();
      opciones.generador();
      fin.generador();
      about.generador();
      SwitcScreen();
    break;
    case 1://Pantalla de juego
    image(fondo,x,0);
      image(Ft,0,0);
      Hut();
      for(int i = 0; i < bam.length; i++){  
        bam[i].sitio();
        bam[i].bam();
      }
      jugador.generator();

      sala();  
    break;
    case 3://Pantalla de pause
    break;
    case 4://Pantalla de opciones
    break;
    case 5://Pantalla de adios
    break;
    case 6:
    break;
  }
}
Botones jugar;
Botones opciones;
Botones fin;
Botones about;

class Botones{
  int i;
  float x = 192;
  float y;
  
  Botones(float tempy,int B){
    y = tempy;
    i = B;
  }
  void generador(){
    Imagen();
    funcion();
  }
  void Imagen(){
    switch(i){
      case 1:
      textFont(pixelFont);
      fill(0,255,232);
      textSize(46);
      textAlign(CENTER,CENTER);
      text("Jugar",x,y);
      break;
      case 2:
      textFont(pixelFont);
      fill(0,255,232);
      textSize(46);
      textAlign(CENTER,CENTER);
      text("Opciones",x,y);
      break;
      case 3:
      fill(255,0,0);
      circle(x,y, 32); 
      fill(255);
      break;
      case 4:
      textFont(pixelFont);
      fill(0,255,232);
      textSize(46);
      textAlign(CENTER,CENTER);
      text("Acerca",x,y);
      break;
    }
  }
  int funcion(){
    int reg = 0;
    if(mouseX >= x - 40 && mouseX <= x + 40 && mouseY <= y + 20 && mouseY >= y-20 && mouseButton == LEFT){
      reg=i;
    }
    return reg;
  }
}
