class Bomba {
  int posX;
  int posY;
  int tam;
  PImage imagen1;
  PImage imagen2;
   float  numeroRandomCasillas;
  Bomba(int _posX, int _posY, int _tam) {
    posX = _posX;
    posY = _posY;
    tam = _tam;

    imagen1 = loadImage("bloque.png");
    imagen2 = loadImage("bomba.png");
  }

  void dibujar() {
    if( numeroRandomCasillas < 30){
    image(imagen2, (posX+0.7) * tam, (posY+7) * tam, tam, tam);
    }
  
  }
}
