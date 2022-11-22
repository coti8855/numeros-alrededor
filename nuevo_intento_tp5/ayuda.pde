class Ayuda {
  ProgramaPrincipal programaPrincipal;
  PImage imagenAyuda;
  int pantalla;
  Ayuda(){
    imagenAyuda = loadImage("buscaminasAyuda.png");   
  }
  
  void dibujar(){   
    image(imagenAyuda,0,0, width, height);
    if (pantalla == 1){
    programaPrincipal.dibujar();
    }if (pantalla == 3){  
      programaPrincipal.dibujar();
    } 
  }
  void mousePresionado(){
    if (mouseX > 0 && mouseX < 78 &&  mouseY > 0  &&  mouseY < 40){
    pantalla = 1;
    } if (mouseX > 140 && mouseX < 250 &&  mouseY > 0  &&  mouseY < 40){
    pantalla = 3;
    }  
  }
}
