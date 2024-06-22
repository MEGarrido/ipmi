//Trabajo Práctico N°3
//Alumna : María Emilia Garrido
//Legajo : 120315/6
//Link video Youtube : https://youtu.be/Tf0qfS23NB4


PImage obra;
float tam,locura;
color rombos, lineas, recuadro,fondo, cuadrosre;

void setup(){
  size(800,400);
  colorMode(HSB,360,100,100);
  rombos = color(2,89,88);
  lineas = color(2,89,88);
  recuadro = color(212,55,99);
  fondo = color (175,87,87); 
  cuadrosre = color (100,95,60);
  tam = 390/4;
  obra = loadImage("obra.jpg");
}

void draw(){
  background(fondo);
  image(obra,0,0);
  rectMode(CORNER);
  
  //recuadro celeste
  dibujarRecuadro();
  
  //cuadrados que delinean
  dibujarCuadros();
  
  //lineas de fondo
  dibujarLineas();
  
  //función que dibuja los rombos y les da color
  //también si decido mantener apretada la tecla m puedo mover los rombos
  if (keyPressed){
    if (key == 'm'){
    dibujarRombos(mouseX,mouseY,rombos);
    }
  }else{
    dibujarRombos(tam,tam,rombos);
  }
  
  println(mouseX + "/" + mouseY);
  //println(frameCount);
}

void mouseClicked (){
  int colorI = colorInteractivo(mouseY);// al clickeartoma la posicion de mouseY como parámetro de la función, y lo resta al height dentro de ella
  lineas = color(random(colorI),random(100), 90);// modificando el valor del hue en las lineas y a su vez modificando con random
}

void keyPressed (){
  //cambia el color de los rombos
  if (key == 'e'){
    rombos = color(random(360),89,88);
    dibujarRombos(tam,tam,rombos);
  }
  
  //reinicia las variables de color al valor inicial
  if(key=='r'){
    rombos = color(2,89,88);
    lineas = color(2,89,88);
    recuadro = color(212,55,99);
    fondo = color (175,87,87); 
    cuadrosre = color (100,95,60);
    locura=0;
  }
  
  //modo locura apretando la tecla L (cambia los colores de las variables color cada vez que se toca, menos las lineas que se cambian solo una vez)
    if (key == 'l'){
      fondo = color (random(locura),random(locura),random(locura));
      recuadro = color(random(locura),random(100),random(locura));
      cuadrosre = color(random(360),random(locura),random(locura));
      lineas = color(0);
      rombos = color(random(locura),random(100),random(100));
      locura=frameCount/2;
    }
}




//si tan solo podría lograr hacer este tp...
