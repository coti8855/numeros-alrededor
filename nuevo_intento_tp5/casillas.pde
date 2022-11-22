class Casilla {
  Bomba bomba;
  int posX;
  int posY;
  int posXBomba;
  int posYBomba;
  int posX2;
  int posY2;
  int tam;
  PImage imagen1;
  boolean casillaPresionada; 
  PImage imagen2;
   PImage imagenUno;
    PImage imagenDos;
     PImage imagenTres;
     PImage imagenCuatro;
     PImage imagenCinco;
  float  numeroRandomCasillas;
   int cantCasillas;
int cantMinas;
  Casilla(int _posX, int _posY, int _tam, int _cantCasillas, Bomba _bomba) {
    posXBomba = _posX;
    posYBomba = _posY;
    tam = _tam;    
    bomba = _bomba;
    cantCasillas = _cantCasillas;   
    imagen1 = loadImage("bloque.png");
    imagen2 = loadImage("bomba.png");
     imagenUno = loadImage("buscaminasNumeroUno.png");
    imagenDos = loadImage("buscaminasNumerosDos.png");
     imagenTres = loadImage("buscaminasNumeroTres.png");
imagenCuatro = loadImage("bucaminasNumeroCuatro.png");
    imagenCinco = loadImage("bucaminasNumeroCinco.png");
  }

  Casilla(int _posX, int _posY, int _tam, int _cantCasillas) {
    posX = _posX;
    posY = _posY;
    tam = _tam;
    cantCasillas =  _cantCasillas;
    imagen1 = loadImage("bloque.png");
    imagen2 = loadImage("bomba.png");
    cantCasillas = _cantCasillas;
     imagenUno = loadImage("buscaminasNumeroUno.png");
    imagenDos = loadImage("buscaminasNumerosDos.png");
     imagenTres = loadImage("buscaminasNumeroTres.png");
      imagenCuatro = loadImage("bucaminasNumeroCuatro.png");
    imagenCinco = loadImage("bucaminasNumeroCinco.png");
  
  }

  boolean hayBomba(int posX, int posY) {
    if (bomba != null && posX == posXBomba && posY == posYBomba) {
      return true;
    } else {
      return false;
    }
  } 

  void mostrar(int i, int j, int posX4, int posY4) {     
    if ( posX4 == posXBomba && posY4 == posYBomba){
     image(imagen1, (posX4 * tam)+15, (posY4 * tam)+100, tam, tam); 
    }else{  
      if(cantMinas == 0 ){
     image(imagen1, (posX* tam)+15, (posY * tam)+100, tam, tam);
  }
       if(cantMinas == 1 ){
     image(imagenUno, (posX* tam)+15, (posY * tam)+100, tam, tam);
  }
   if(cantMinas == 2 ){
     image(imagenDos, (posX* tam)+15, (posY * tam)+100, tam, tam);
  } if(cantMinas == 3 ){
      image(imagenTres, (posX4 * tam)+15, (posY4 * tam)+100, tam, tam);
  }if(cantMinas == 4 ){
      image(imagenCuatro, (posX4 * tam)+15, (posY4 * tam)+100, tam, tam);
  }
  if(cantMinas == 5 ){
      image(imagenCinco, (posX4 * tam)+15, (posY4 * tam)+100, tam, tam);
  }
    }
     
    
  }


  void tieneXMinasAlrededor(int _cantMinas){
    cantMinas = _cantMinas;

  }


  void perdiste() { 
    image(imagen2, (posXBomba * tam)+15, (posYBomba * tam)+100, tam, tam);
    image(imagen1, (posX* tam)+15, (posY * tam)+100, tam, tam);
    
  }
}
