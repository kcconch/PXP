// The world pixel by pixel 2019
// Daniel Rozin
// Random positioning of elements

int cellSize= 20;                  // the size of each element
int numOfElements=10000;           //  how many to draw every frame

void setup(){
 size(1000, 800);         
}

void draw(){
  background (0);
  for (int i = 0; i < numOfElements ; i++){
       float xPosition = random(width);                  // randomize an X and Y position
       float yPosition = random(height);
       fill(xPosition/4,yPosition/4,mouseX);            // give it some color and inteactivity
       rect(xPosition, yPosition,cellSize,cellSize);
  }  
}