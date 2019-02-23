// The world pixel by pixel 2018
// Daniel Rozin
// use ragment shader to color pixels by sinew wave

PShader myFragShader;                  // variable to hold shader
float counter , dir = 0.001;

void setup() {
  size(1000, 700, P2D);                             // must be P2D or P3D for shaders
  frameRate(400);                                    // set high FPS, defaults to 60
  myFragShader = loadShader("myFragShader.glsl");    // our shader file has to be in our folder
  //frameRate(60);                                    // you may want to slow it down to avoid "tearing"
}

void draw() {
  counter +=dir;
  if (counter > 1 || counter < 0)dir = -dir;
  rect(0, 0, width, height);                          // draw something, otherwise shader wont work
  myFragShader.set("paramx", mouseX/float(width));    // this is how we pass arguments, data type must match
  myFragShader.set("paramy", mouseY/float(height));
  myFragShader.set("Phase", counter);
  shader(myFragShader);                                // call the shader
  println (frameRate);
}
