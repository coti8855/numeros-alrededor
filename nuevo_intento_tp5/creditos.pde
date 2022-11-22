class Creditos {
  ProgramaPrincipal programaPrincipal;
  PImage imagenCreditos;
  int pantalla = 1;
  Creditos(ProgramaPrincipal _programaPrincipal) {
    imagenCreditos = loadImage("buscaminasCreditos.png");
    programaPrincipal = _programaPrincipal;
  }

  void dibujar() {   
    image(imagenCreditos, 0, 0, width, height);
  }
  void mousePresionado() {
    if (mouseX > 0 && mouseX < 78 &&  mouseY > 0  &&  mouseY < 40) {
      programaPrincipal.pantalla= 1;
    } 
    if (mouseX > 78 && mouseX < 140 &&  mouseY > 0  &&  mouseY < 40) {
      programaPrincipal.pantalla= 2;
    }
  }
}
