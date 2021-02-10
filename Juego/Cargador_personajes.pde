personajes enemigo;
void PersLoad(){
    jugador = new personajes(width/2,height/2,1);
    for(int i = 0; i < bam.length ; i++){
      bam[i] = new disparo();
      delay(5);
    }    
}
