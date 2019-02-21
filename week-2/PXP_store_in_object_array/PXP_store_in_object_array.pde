// The world pixel by pixel 2019
// Daniel Rozin
// Using a class and objects to store all attributes of our "pixel"

int numOfElements=5000;           //  how many to draw every frame
myPixel myPixels[]= new myPixel[0];     // creating an empty array of type myPixel (the class name)

void setup() {
  size(1000, 800);  
  for (int i = 0; i < numOfElements; i++) {   
    myPixel tempPixel= new myPixel();                 // creating a new instance of the class myPixel
    myPixels= (myPixel[]) append(myPixels, tempPixel); // adding the new instance to the array , we need to cast it as a (miPixel array)
  }
  noStroke();
}

void draw() {
  background (0);
  for (int i = 0; i < numOfElements; i++) {
   myPixels[i].drawPixel();                        // call the drawPixel () function in the myPixel object
  }
}

class myPixel {                          //our class 
  float xPosition, yPosition;            // instance variables
  float R, G, B;

  myPixel() {                            // our constructor function that gets called when you call new()
    xPosition = random(width);           // giving our variables an intial value;
    yPosition = random(height);
    R= random(255);
    G= random(255);
    B= random(255);
  }

  void drawPixel() {                    // our class function that draws the piexel 
    fill(R, G, B);
    float distanceToMouse= dist(mouseX, mouseY, xPosition, yPosition)/10;
    rect(xPosition, yPosition, distanceToMouse, distanceToMouse);
  }
}