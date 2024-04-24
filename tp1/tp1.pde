PImage FotoTomate;
void setup () {
  size (800,400);
  background (255);
  FotoTomate = loadImage ("tomate.jpg");
  image (FotoTomate,0,0,400,400);
}

void draw () {
  //tomates
  fill (240,25,10);
  stroke (20,30,40);
  strokeWeight (0);
  circle (533,158, 148);
  circle (640,182, 140);
  circle (590,223, 160);
  
  //hojas del tomate frente
  fill (40,115,45);
  noStroke ();
  triangle (600,185,615,195,579,220);
  triangle (585,212,580,219,546,210);
  triangle (599,193,543,141,603,182);
  triangle (600,190,615,190,600,105);
  triangle (613,181,610,195,690,170);
  triangle (606,198,620,190,690,210);
  
  //hojas del tomate de la derecha
  triangle (675,135,720,115,675,145);
  triangle (675,140,750,160,675,150);
  triangle (666,147,680,148,695,175);
  triangle (669,150,626,133,669,140);
  triangle (673,136,630,100,663,142);
  
  //hojas del tomate de la izquierda
  triangle (515,109,528,103,492,60);
  triangle (516,107,526,118,565,70);
  triangle (526,118,531,105,556,109);
  triangle (555,109,551,64,546,108);
  triangle (529,118,520,108,502,113);
  triangle (519,109,473,81,504,113);
  
  //rama
  stroke (30,110,35);
  strokeWeight (10);
  line (610,187,618,168);
  line (525,105,527,76);
  line (673,115,672,143);
  
}

void mouseClicked () {
 println (mouseX, mouseY); 
}
