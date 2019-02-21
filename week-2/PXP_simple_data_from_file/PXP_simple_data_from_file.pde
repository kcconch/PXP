/* The world pixel by pixel 2019
 // Daniel Rozin
 get data from a CSV file and use it to draw something
 */


int[] data;

void setup() {
  size(400, 400);
  String[] stringFromdata = loadStrings("data.txt");       // load our file into a string array
  data= int(split (stringFromdata[0], ','));               // our string arry only has one item because the file had one line
                                                           // split the String to items using ',' as delimiter                                                                                         // cast the strings into an int array data
} 


void draw() {   
  background(0);
  fill(255, 0, 0);
  for (int i = 0; i<data.length; i++) {
    ellipse(i*50, 200, data[i], data[i]);                 // draw circles based on the numbers in the file
  }
}