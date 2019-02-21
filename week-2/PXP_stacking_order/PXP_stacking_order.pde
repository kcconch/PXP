// The world pixel by pixel 2019
// Daniel Rozin
// change the stacking order by giving a Z value

int cellSize= 20;                  // the size of each element

void setup(){
 size(1000, 800,P3D);          // we need to be in P3D mode to set the Z of things
}

void draw(){
  background (255);
  for (int x = 0; x < width ; x+=cellSize){
     for (int y = 0; y < height ; y+=cellSize){
       float distanceToMouse= dist(x,y,mouseX, mouseY);
       pushMatrix();                      // we want a fresh matrix for every item
       translate(0,0,distanceToMouse); // we are translating just on the Z axis
       fill(distanceToMouse);            // give it some color and interactivilty
       ellipse(x,y,cellSize*2,cellSize*2);
       popMatrix();                        // pop thre matrix so we can start fresh
     }
  }  
}