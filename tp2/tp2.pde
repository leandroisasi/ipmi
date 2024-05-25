//Leandro Isasi 93081/8
//Comisión 5 

PImage pantalla1, pantalla2, pantalla3;
int pantalla = 1, tiempoInicio;
float y = 50;
float x = 50;
float velocidad = 1;
PFont myFont;

void setup() {
  size(640, 480);
  pantalla1 = loadImage("foto 1.jpeg");
  pantalla2 = loadImage("foto 2.jpeg");
  pantalla3 = loadImage("foto 3.jpeg");
  tiempoInicio = second();
  myFont = loadFont("fuenteNueva.vlw");
  fill (0);
  textFont(myFont);
}

void draw() {
  background(255);
  
  if (second() - tiempoInicio >= 7) {
    pantalla++; 
    
  if (pantalla > 3) {
      pantalla = 3;
    }
    
    tiempoInicio = second();
  }
  
  if (pantalla == 1) {
    image(pantalla1, 0, 0, width, height);
    text("Don Quijote de la Mancha es una obra clásica de la literatura española escrita por Miguel de Cervantes. Fue publicada en dos partes, la primera en 1605 y la segunda en 1615, marcando un hito en la historia de la literatura.", y-70, 200, 520, 200);
    y = y + velocidad;
  } else if (pantalla == 2) {
    image(pantalla2, 0, 0, width, height);
    text("La novela narra las aventuras de Don Quijote, un hidalgo obsesionado con los libros de caballerías, y su leal escudero, Sancho Panza. Juntos, viajan por la región de La Mancha en busca de aventuras, enfrentándose a gigantes imaginarios y desafiando las convenciones sociales.", 135, x, 400, 400);
    x += velocidad;
  } else if (pantalla == 3) {
    image(pantalla3, 0, 0, width, height);
    text("Don Quijote de la Mancha es una obra que combina elementos de comedia, sátira y drama. A través de las extravagantes hazañas de sus personajes, Cervantes critica la sociedad de su época y reflexiona sobre temas universales como la locura, la realidad y la búsqueda del ideal.", x-150, y-130, 410, 400);
     x += velocidad;
     y += velocidad;
     if (x > 280) {
       velocidad = 0;
     }
    rect(500,400,105,45);
    fill(255);
    text("REINICIAR", 505, 430);
    fill(0);
  }
}
  void mousePressed() {
  if (mouseX > 500 && mouseX < 605 && mouseY > 400 && mouseY < 445) {
    pantalla = 1;
    tiempoInicio = second();
    y = 50;
    x = 50;
    velocidad = 1;
  }
}
