// The world pixel by pixel 2019
// Daniel Rozin
// grid of triangles rotating according to mouse position

int cellSize= 20;                  // the size of each element

void setup() {
  size(1000, 800);
}

void draw() {
  background (0);
  for (int x = 0; x < width; x+=cellSize) {
    for (int y = 0; y < height; y+=cellSize) {
      float distanceToMouse= dist(x, y, mouseX, mouseY);     // calculate the distance of the element to the mouse
      pushMatrix();                                          // if we dont push and pop the matrix our transformations will accumolate
      translate(x, y); 
      rotate(distanceToMouse/100);
      triangle(-cellSize/2, -cellSize/2, -cellSize/2, cellSize/2, cellSize/2, cellSize/2);
      popMatrix();
    }
  }
}