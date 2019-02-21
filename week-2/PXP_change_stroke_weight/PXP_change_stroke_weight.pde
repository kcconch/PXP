// // The world pixel by pixel 2019
// Daniel Rozin
//  grid of rects changing the stroke weight with mouse

int cellSize= 20;                  // the size of each element

void setup(){
 size(1000, 800);
}

void draw(){
  background (255);
  for (int x = 0; x < width ; x+=cellSize){
     for (int y = 0; y < height ; y+=cellSize){
       fill(x,second()*4,mouseX);            // give it some color and interactivilty
       float distanceToMouse= dist(x,y, mouseX, mouseY);
       strokeWeight (distanceToMouse/50);      // we want a small number so divide by 50
       rect(x,y,10,10);
     }
  }  
}