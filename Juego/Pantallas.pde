//Inicio de funciones para mostrar cada cosa
void PantallaIn() {
  image(Inicio, 0, 0);
  jugar.generador();
  opciones.generador();
  fin.generador();
  about.generador();
}
void GamePlay() {
  image(fondo, x, 0);
  image(Ft, 0, 0);  
  prueba.coX();
  jugador.generator();
  bam();
  sala();
  
  Hut();
}
void Opciones() {
  image(opcion, 0, 0);
  volver.generador();
}
//Fin de las funciones

//Cambiar el escenario
void SwitcScreen() {
  if (Pantalla == 0) {
    if (jugar.funcion()) {
      Pantalla = 1;
    } else if (opciones.funcion()) {
      Pantalla = 2;
    } else if (about.funcion()){
      Pantalla = 4;
    } else if (fin.funcion()) {
      image(Manito, mouseX-40, mouseY + 10);
      textFont(pixelFont);
      fill(255);
      text("Aun no funciona", mouseX+200, mouseY);
    } 
  } else if(Pantalla == 2 || Pantalla == 4){
    if (volver.funcion()) {
      Pantalla = 0;
    }
  }  
}
//Fin de la funcion

//Hacer las pantallas
void pantalla() {
  switch(Pantalla) {
  case 0://Pantalla de inicio
    PantallaIn();
    break;
  case 1://Pantalla de juego
    GamePlay();
    break;
  case 2://Pantalla de opciones
    Opciones();
    break;
  case 3://Pantalla de pause      
    break;    
  case 4://Pantalla acerca
    acerca();
    
    break;
  case 5:
    break;
  }
}
Botones jugar;
Botones opciones;
Botones fin;
Botones about;
Botones volver;

class Botones {
  int i;
  float x = 192;
  float y;

  Botones(float tempy, int B) {
    y = tempy;
    i = B;
  }
  void generador() {
    Imagen();
    funcion();
  }
  void Imagen() {
    switch(i) {
    case 0:
      textFont(pixelFont);
      fill(0, 255, 232);
      textSize(46);
      textAlign(CENTER, CENTER);
      text("Volver", x, y);
      break;
    case 1:
      textFont(pixelFont);
      fill(0, 255, 232);
      textSize(46);
      textAlign(CENTER, CENTER);
      text("Jugar", x, y);
      break;
    case 2:
      textFont(pixelFont);
      fill(0, 255, 232);
      textSize(46);
      textAlign(CENTER, CENTER);
      text("Opciones", x, y);
      break;
    case 3:
      fill(255, 0, 0);
      circle(x, y, 32); 
      fill(255);
      break;
    case 4:
      textFont(pixelFont);
      fill(0, 255, 232);
      textSize(46);
      textAlign(CENTER, CENTER);
      text("Acerca", x, y);
      break;
    }
  }
  boolean funcion() {
    boolean reg = false;
    if(mousePressed){
      if (mouseX >= x - 40 && mouseX <= x + 40 && mouseY <= y + 20 && mouseY >= y-20 && mouseButton == LEFT) {
        reg = true;
      } else {
        reg = false;
      }
    }
    return reg;
  }
}
