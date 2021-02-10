//Inician controles del jugador
void keyPressed(){
  if(Pantalla == 1){
    switch(keyCode){
      case 'a':
      case 'A':
      case LEFT:
        jugador.Izq = true;
      break;
      case 's':
      case 'S':
      case DOWN:
        jugador.Proud = true;
      break;
      case 'd':
      case 'D':
      case RIGHT:
        jugador.Der = true;
      break;
      case 'w':
      case 'W':
      case UP:
        jugador.Jump = true;
      break;
      case 'j':
      case 'J':
      case '1':

      break;
    }
  }
}
void keyReleased(){
  switch(key){
    case 'a':
      case 'A':
      case LEFT:
        jugador.Izq = false;
      break;
      case 's':
      case 'S':
      case DOWN:
        jugador.Proud = false;
      break;
      case 'd':
      case 'D':
      case RIGHT:
        jugador.Der = false;
      break;
      case 'w':
      case 'W':
      case UP:
        jugador.Jump = false;
      break;
      case 'j':
      case 'J':
      case '1':

      break;
  }
}
void pantallas(){
}
