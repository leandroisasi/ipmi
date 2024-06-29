PImage pantalla1, pantalla2, pantalla3;
PFont myFont;
int pantalla = 0;
int contador = 0;

// Variables de los texto
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
  if (contador >= 180) {
    pantalla++;
    contador = 0;
  }

  if (pantalla == 0) {
    image(pantalla1, 0, 0, width, height);
    fill (0);
    text("Don Quijote de la Mancha es una obra clásica...", posX, posY + 150, 400, 400);
    posX += velocidadX;
    posY = velocidadY;
  } else if (pantalla == 1) {
    image(pantalla2, 0, 0, width, height);
    fill (0);
    text("La novela narra las aventuras de Don Quijote...", posX + 150, posY, 400, 400);
    posX = velocidadY;
    posY += velocidadY;
  } else if (pantalla == 2) {
    image(pantalla3, 0, 0, width, height);
    fill (0);
    text("Don Quijote de la Mancha es una obra que combina...", posX, posY - 150, 400, 400);
    posX += velocidadX;
    posY += velocidadY;


    // botón "REINICIAR"
    fill(0);
    rect(500, 400, 105, 45);
    fill(255);
    text("REINICIAR", 505, 430);
  }
}

void mouseClicked() {
  if (mouseX > 500 && mouseX < 605 && mouseY > 400 && mouseY < 445) {
    pantalla = 0;
    contador = 0;
    posX = 50;
    posY = 50;
    velocidadX = 1;
    velocidadY = 1;
  }
}
