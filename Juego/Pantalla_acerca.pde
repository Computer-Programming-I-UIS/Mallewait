void acerca(){
  image(acerca,0,0);
  String[] Acerca = loadStrings("about/acerca.txt");
  for(int i = 0; i < Acerca.length; i++){
    fill(255);
    textAlign(0);
    textSize(30);
    text(Acerca[i],64,32*(i+1));    
  }
  volver.generador();
}
