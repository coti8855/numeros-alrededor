ProgramaPrincipal programa;

void setup(){
  size(323, 456);
  programa = new ProgramaPrincipal();
}

void draw(){
  background(255);
 programa.dibujar();
}

void mousePressed(){
  programa.mousePresionado();
}
