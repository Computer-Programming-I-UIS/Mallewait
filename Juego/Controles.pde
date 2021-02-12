//Inician controles del jugador
void keyPressed(){
  if(Pantalla == 1){
    switch(keyCode){
      case 'a':
      case 'A':
        jugador.Izq = true;
      break;
      case 's':
      case 'S':
        jugador.Proud = true;
      break;
      case 'd':
      case 'D':
        jugador.Der = true;
      break;
      case 'w':
      case 'W':
        if(jugador.Floor){
        jugador.Jump = true;
        }
      break;
      case 'j':
      case 'J':
      case '1':
        jugador.Shot = true;
      break;
    }
  }
}
void keyReleased(){
  if(Pantalla == 1){
  switch(key){
    case 'a':
    case 'A':
      jugador.Izq = false;
    break;
    case 's':
    case 'S':
      jugador.Proud = false;
    break;
    case 'd':
    case 'D':
      jugador.Der = false;
    break;
    case 'w':
    case 'W':
      jugador.Jump = false;
      jugador.Floor = false;
    break;
    case 'j':
    case 'J':
    case '1':
      jugador.Shot = false;
    break;
    }
  }
}
