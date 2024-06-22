// https://youtu.be/OP8fOB5EiaY
//Leandro Isasi 93081/8
//Docente: Tobías Albirosa - Comisión 5

int numRect = 19;
int numRect2 = 18;
float tamRect = 398;
float tamRect2 = 388;
color[] colores;
boolean mostrarRectangulos = true;
PImage fotoIlustracion;

void setup() {
  size(800, 400);
  fotoIlustracion = loadImage("foto 1.jpg");
  image(fotoIlustracion, 0, 0, 400, 400);
  colores = ColoresIniciales();  
}

color[] ColoresIniciales() {
  color[] colores = new color[22];
  colores[0] = color(162, 171, 203);
  colores[1] = color(127, 148, 195);
  colores[2] = color(102, 128, 195);
  colores[3] = color(244, 95, 10);
  colores[4] = color(240, 140, 1);
  colores[5] = color(254, 167, 59);
  colores[6] = color(70, 180, 182);
  colores[7] = color(0, 161, 168);
  colores[8] = color(10, 135, 153);
  colores[9] = color(231, 25, 3);
  colores[10] = color(237, 67, 7);
  colores[11] = color(230, 91, 30);
  colores[12] = color(24, 180, 132);
  colores[13] = color(0, 166, 101);
  colores[14] = color(11, 137, 62);
  colores[15] = color(216, 64, 100);
  colores[16] = color(223, 73, 102);
  colores[17] = color(211, 109, 122);
  colores[18] = color(240, 90, 155);
  colores[19] = color(225, 85, 145);
  colores[20] = color(190, 120, 150);
  colores[21] = color(255, 0, 0);

  return colores;
}

void draw() {

  // Primer for (externo)
  for (int i = 0; i < numRect; i++) {
    float x = 400 + i * 11;
    float y = 0 + i * 11;
    float anchRect = tamRect - i * 22;
    float altRect = tamRect - i * 22;

    fill(colores[i]);
    strokeWeight(4);
    stroke(255, 0, 0);
    rect(x, y, anchRect, altRect);

    // Segundo for (interno)
    for (int j = 0; j < numRect2; j++) {
      float x2 = 405 + j * 11;
      float y2 = 5 + j * 11;
      float anchRect2 = tamRect2 - j * 22;
      float altRect2 = tamRect2 - j * 22;

      if (mostrarRectangulos) {
        noFill();
        strokeWeight(1);
        stroke(0);
        rect(x2, y2, anchRect2, altRect2);
      }
    }
  }
}

void mousePressed() {
  if (mouseX >= 400 && mouseX <= 800 && mouseY >= 0 && mouseY <= 400) {
    for (int i = 0; i < numRect; i++) {
      colores[i] = color(random(255), random(255), random(255));
    }
  }
}

void keyPressed() {
  if (key == 'b' || key == 'B') {
    mostrarRectangulos = false;
  } else if (key == 'r' || key == 'R') {
    mostrarRectangulos = true;
    colores = ColoresIniciales();  // Restaurar los colores originales
  }
}
