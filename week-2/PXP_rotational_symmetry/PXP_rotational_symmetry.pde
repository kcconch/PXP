// The world pixel by pixel 2019
// Daniel Rozin
// rotational symmetry, change the rotationAngle 

int rotationAngle=30;
int pixelR =200;
int pixelG =200;
int pixelB =200;
void setup() {
  size(1000, 800);
  noStroke();
  background (0);
}

void draw() {
  int pixelShape = (int) random(3);             // randomize all atributes of the "pixel"
  float pixelWidth= random(30);
  float pixelHeight= random(30);
  pixelR += random(-10, 10) ;                   
  pixelG += random(-10, 10);
  pixelB += random(-10, 10);
  pixelR %=255 ; pixelG %=255 ; pixelB %=255 ;   // make sure we are in the range 0-255
  translate(width/2, height/2);                  // translate to the middle of screen because rotate()centers on 0, 0
  for (int i=0; i<360; i+=rotationAngle) {        
    drawMyShape(mouseX-width/2, mouseY-height/2, pixelWidth, pixelHeight, pixelR, pixelG, pixelB, pixelShape);
    rotate(radians(rotationAngle));               // we ae rotating but not push/pop the matrix so it accumolates
  }
}

void drawMyShape(float x, float y, float w, float h, float R, float G, float B, int shape) {
  fill(R, G, B);
  switch (shape) {                        // this is a "case statement" it is a more elegant way of doing if-then
  case 0:
    rect(x, y, w, h);
    break;
  case 1:
    ellipse(x, y, w, h);
    break;
  case 2:
    triangle(x, y, x+w, y, x, y+ h);
    break;
  }
}