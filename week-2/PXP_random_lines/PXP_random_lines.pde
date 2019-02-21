// The world pixel by pixel 2019
// Daniel Rozin
// paint lines

float lastX, lastY;
void setup() {
  size(1000, 800);
}

void draw() {
  stroke (255, 255, 0);
  for (int i = 0; i< 1000; i+=10) {
    float thisX= mouseX + random(-i, i);
    float thisY= mouseY + random(-i, i);
    line(thisX, thisY, lastX, lastY);
    lastX = thisX; 
    lastY= thisY;
  }
  fill(0, 0, 255, 5);
  rect(0, 0, width, height);
}