void dibujarRombos(float tam1, float tam2, color juancito){
  int cant = 4;
  float trom = 68.5;
  for(int r = 0; r < cant; r++){
    for(int t = 0; t< cant; t++){
      pushMatrix();
      translate(455+r*tam1,6+t*tam2); //translada el eje de cordenadas a la distancia entre cuadrado y cuadrado
      rotate(radians(45)); //rota los cuadrado conviertiendolos en rombos
      rectMode(CORNER);
      noStroke();
      fill(juancito);
      rect(0,0,trom,trom);
      popMatrix();
    }
  }
}


void dibujarLineas(){
  int   ancho = 455 + 291; 
  int   alto = 55 + 291;
  float distancia = 4;
  for(int j = 455; j < ancho; j+=distancia){
    strokeWeight(1.5);
    stroke(lineas);
    line(j,55,j,alto);
  }
}

void dibujarCuadros(){
  int cant = 3;
  int aumen = 100;
  int degrade = 80;
    for(int y = 0; y < cant; y++){
    noStroke();
    fill(cuadrosre,0+y*degrade);
    rectMode(CENTER);
    rect(600,200,291-y*aumen,291-y*aumen);
  }
}

void dibujarRecuadro (){
  noStroke();
  fill(recuadro);
  rect(405,5,390,390);
}

int colorInteractivo(int pos){
  return (height-pos);
}
