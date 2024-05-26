// Trabajo Práctico N°2 - Variables y Condicionales

//Variables
PImage inicio, imagen1, imagen2, imagen3, imagen4, imagen5, fin;
int estado;
String start, texto1, texto2, texto3, texto4, texto5, restart;
int tiempo, movimiento;
PFont botones, fuente;

void setup () {
  size(640,480);
  rectMode(CORNER);
  textAlign(CENTER,CENTER);
  botones = loadFont("fuentebotones.vlw");
  fuente = loadFont("fuentetextos.vlw");
  estado = 0;
  start = "START";
  texto1 = "Resident Evil 4 es un videojuego \nde acción-aventura de disparos \nen tercera persona perteneciente al \nsubgénero de terror y supervivencia, \ny desarrollado por Capcom.";
  texto2 = "El argumento del juego nos pone en la piel de Leon Scott Kennedy,\nsobreviviente del desastre vírico que destruyó a Raccoon City,\nconvertido ahora seis años después de este suceso,\n en un agente del Servicio Secreto de los Estados Unidos\nenviado a una zona rural de España\ncon la misión de rescatar a la hija del Presidente de los Estados Unidos,\nAshley Graham que fue secuestrada por una secta que opera en la zona. \nLa investigación de Leon se complica luego de que una horda\nde aldeanos enfurecidos lo ataquen sin razón aparente.";
  texto3 = "El juego se centra en la acción y los disparos\nhacía una gran multitud de enemigos en espacios\n abiertos ydiversos escenarios como castillos,\nislas/cuevas, el pueblo pequeño y destruido,etc.";
  texto4 = "A lo largo del juego Leon se verá las caras con\ncentenares de enemigos y monstruos diferentes.\nAunque la tropa de ganados comparte más o menos\nlas mimas características a la hora de pelear,\ncada uno se comporta distinto. Nos encontraremos con lobos,\nganado al que se le explota la cabeza y le salen guadañas,\nun mounstruo del lago, bichos voladores gigantes y muchos más.";
  texto5 = "Al final Leon no solo termina combatiendo a la plaga\nen su propio cuerpo y fuera, y luchando contra\ntodo tipo de enemigos, sino también lidiando\ncon personas y problemas de su pasado.\nPor su historia, su banda sonora y sus gran diversidad de enemigos,\nsus diversos escenarios, diversos tipos de armas, puzzles\ny personajes, obtuvo grandes críticas y puntuciones y\nen el 2023 se estrenó su respectivo REMAKE";
  restart = "RESTART";
}

void draw () {
    movimiento = frameCount;
    tiempo = frameCount/60;
    println ("Posición", mouseX, "/", mouseY);
    println ("Segundos:", tiempo);
    background (0);
    
  //pantalla de inicio
  if(estado==0){
    frameCount = 0;
    inicio = loadImage("inicio.jpg");
    image(inicio,0,0,width,height);
    strokeWeight(2);
    fill(45,49,46);
    stroke(20);  
    rect(325,330,80,30);
    fill(200);
    textFont(botones);
    textSize(20);
    text(start,365,345);
  } 
    
  //diapositiva 1
  if (estado == 1) {
    imagen1 = loadImage("imagen1.jpg");
    image(imagen1,0,0,width,height);
    textFont(fuente);
    textSize(25);
    fill(movimiento*3,0,0);
    text(texto1, 410,movimiento*6);
    }
   
  //cambio de estado
  if (tiempo >= 1) {
    estado = 2;
  }
  
  //diapositiva 2
  if (estado == 2){
    imagen2 = loadImage("imagen2.jpg");
    image(imagen2,0,0,width,height);
    textFont(fuente);
    textSize(21);
    fill(255,250,250,frameCount*2);
    text(texto2,320,240);
  }
  
  //cambio de estado
    if (tiempo >=  5) {
      estado = 3;
    }
  
  //diapositiva 3
  if (estado == 3){
    imagen3 = loadImage("imagen3.jpg");
    image(imagen3,0,0,width,height);
    fill(180,180,255);
    textFont(fuente);
    textSize(20);
    text(texto3,frameCount*3,240);
  }
  
  //cambio de estado
    if (tiempo >=  7) {
      estado = 4;
    }
  
  //diapositiva 4
  if (estado == 4){
    imagen4 = loadImage("imagen4.jpg");
    image(imagen4,0,0,width,height);
    fill(255);
    textFont(fuente);
    textSize(20);
    text(texto4, 320,480-frameCount*2);
  }
  
  //cambio de estado
    if (tiempo >=  9) {
      estado = 5;
    }
  
  //diapositiva 5
  if (estado == 5){
    imagen5 = loadImage("imagen5.jpg");
    image(imagen5,0,0,width,height);
    fill(movimiento*3,120,120);
    textFont(fuente);
    textSize(20);
    text(texto5, 680-frameCount*2,240); 
  }
  
  //cambio de estado
    if (tiempo >=  10) {
      estado = 6;
    }
  
  //pantalla final
  if (estado == 6){
    fin = loadImage("fin.jpg");
    image(fin,0,0,width,height);
    fill(54,8,7);
    stroke(157,37,33);
    rect(270,370,100,30);
    fill(185,21,15);
    textFont(botones);
    textSize(20);
    text(restart, 320 , 385);
  }
}

void mousePressed () {
  //BOTON START
  //borde superior    mouseY > 330
  //borde inferior    mouseY < 360
  //borde izquierdo   mouseX > 325
  //borde derecho     mouseX < 405
  
  boolean estoyDentroDeSTART = (mouseY >= 330 && mouseY <= 360 && mouseX >= 325 && mouseX <= 405);
  
  //BOTON RESTART
  //borde superior    mouseY >= 370
  //borde inferior    mouseY <= 400
  //borde izquierdo   mouseX >= 268
  //borde derecho     mouseX <= 370
  
  boolean estoyDentroDeRESTART = (mouseY >= 370 && mouseY <= 400 && mouseX >= 268 && mouseX <= 370);
  
  
  if (estoyDentroDeSTART){
    estado = 1;
  }
  
  if(estoyDentroDeRESTART) {
    estado = 0;
  }
}
