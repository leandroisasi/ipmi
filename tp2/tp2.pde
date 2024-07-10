//Leandro Isasi 93081/8
//Docente: Tobías Albirosa - Comisión 5

PImage pantalla1, pantalla2, pantalla3;
PFont myFont;
int pantalla = 0;
int contador = 0;

// Variables de los textos
float posX = 50;
float posY = 50;
float velocidadX = 1;
float velocidadY = 1;

void setup() {
  size(640, 480);
  pantalla1 = loadImage("foto 1.jpeg");
  pantalla2 = loadImage("foto 2.jpeg");
  pantalla3 = loadImage("foto 3.jpeg");
  myFont = loadFont("fuenteNueva.vlw");
  textFont(myFont);
}

void draw() {
  contador++;
  if (contador >= 180 && pantalla != 2) {
    pantalla++;
    contador = 0;
  }

  if (pantalla == 0) {
    image(pantalla1, 0, 0, width, height);
    fill (0);
    text("Don Quijote de la Mancha es una obra clásica de la literatura española escrita por Miguel de Cervantes. Fue publicada en dos partes, la primera en 1605 y la segunda en 1615, marcando un hito en la historia de la literatura.", posX, posY + 150, 400, 400);
    posX += velocidadX;
    posY = velocidadY;
  } else if (pantalla == 1) {
    image(pantalla2, 0, 0, width, height);
    fill (0);
    text("La novela narra las aventuras de Don Quijote, un hidalgo obsesionado con los libros de caballerías, y su leal escudero, Sancho Panza. Juntos, viajan por la región de La Mancha en busca de aventuras, enfrentándose a gigantes imaginarios y desafiando las convenciones sociales.", posX + 150, posY, 400, 400);
    posX = velocidadY;
    posY += velocidadY;
  } else if (pantalla == 2) {
    image(pantalla3, 0, 0, width, height);
    fill (0);
    text("Don Quijote de la Mancha es una obra que combina elementos de comedia, sátira y drama. A través de las extravagantes hazañas de sus personajes, Cervantes critica la sociedad de su época y reflexiona sobre temas universales como la locura, la realidad y la búsqueda del ideal.", posX, posY - 200, 400, 400);
    posX += velocidadX;
    posY += velocidadY;
    if (posY >= 320) {
      velocidadX = 0;
      velocidadY = 0;

      // botón "REINICIAR"
      fill(0);
      rect(500, 400, 105, 45);
      fill(255);
      text("Reiniciar", 504, 430);
    }
  }
}
void mouseClicked() {
  if ( pantalla == 2 && mouseX > 500 && mouseX < 605 && mouseY > 400 && mouseY < 445) {
    pantalla = 0;
    contador = 0;
    posX = 50;
    posY = 50;
    velocidadX = 1;
    velocidadY = 1;
  }
}
