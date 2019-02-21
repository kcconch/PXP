// The world pixel by pixel 2019
// Daniel Rozin
// grid of rectangles rotating in 3D according to mouse position

int cellSize= 30;                  // the size of each element

void setup() {
  size(1000, 800,P3D);              // must use P3D for any 3D stuff
}

void draw() {
  lights();                         // we want the 3D to be shaded
  background (0);
  for (int x = 0; x < width; x+=cellSize) {
    for (int y = 0; y < height; y+=cellSize) {
      float distanceToMouse= dist(x, y, mouseX, mouseY);     // calculate the distance of the element to the mouse
      pushMatrix();                                          // if we dont push and pop the matrix our transformations will accumolate
      translate(x, y); 
      rotateX(distanceToMouse/100.00);                      // rotateX rotates around the X axis
      rect(0,0,cellSize,cellSize);
      popMatrix();
    }
  }
}