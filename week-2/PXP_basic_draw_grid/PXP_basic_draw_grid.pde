// The world pixel by pixel 2019
// Daniel Rozin
// just make a basic grid

int cellSize= 20;                  // the size of each element

void setup(){
 size(1000, 800);
}

void draw(){
  background (255);
  for (int x = 0; x < width ; x+=cellSize){
     for (int y = 0; y < height ; y+=cellSize){
       fill(x,second()*4,mouseX);            //R,G,B  - give it some color and interactivilty
       rect(x,y,cellSize,cellSize);          // second() goes from 0-60 so multiply by 4 to get 0-240
     }
  }  
}