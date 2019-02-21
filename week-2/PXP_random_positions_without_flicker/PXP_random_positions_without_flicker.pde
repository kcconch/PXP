// The world pixel by pixel 2019
// Daniel Rozin
// Random positioning of elements with array to store the randoms

int cellSize= 20;                  // the size of each element
int numOfElements=10000;           //  how many to draw every frame
float randomXPositions[]= new float[0];     // creating an empty array of floats
float randomYPositions[]= new float[0];     // creating an empty array of floats
void setup() {
  size(1000, 800);  
  for (int i = 0; i < numOfElements; i++) {                                              // adding random numbers to the array
    randomXPositions= append( randomXPositions, random(width));
    randomYPositions= append( randomYPositions, random(height));
  }
}

void draw() {
  background (0);
  for (int i = 0; i < numOfElements; i++) {
   float xPosition = randomXPositions[i];                 // get the random numbers from the array
    float yPosition = randomYPositions[i];
    fill(xPosition/4, yPosition/4, mouseX/4);            // give it some color and inteactivity
    rect(xPosition, yPosition, cellSize, cellSize);
  }
}