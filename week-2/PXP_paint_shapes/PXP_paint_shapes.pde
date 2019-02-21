// The world pixel by pixel 2019
// Daniel Rozin
// paint shapes


void setup() {
  size(1000, 800);
}

void draw() {
  int pixelShape = (int) random(3);             // randomize all atributes of the "pixel"
  float pixelWidth= random(30);
  float pixelHeight= random(30);
  float pixelR = random(255);
  float pixelG = random(255);
  float pixelB = random(255);
  fill(pixelR, pixelG, pixelB);
  
  switch (pixelShape){                        // this is a "case statement" it is a more elegant way of doing if-then
    case 0:
    rect(mouseX, mouseY, pixelWidth, pixelHeight);
    break;
    case 1:
    ellipse(mouseX, mouseY, pixelWidth, pixelHeight);
    break;
    case 2:
    triangle(mouseX, mouseY, mouseX+pixelWidth, mouseY,mouseX, mouseY+ pixelHeight);
    break;   
  }
}