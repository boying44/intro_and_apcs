/*=====================================
  A Blob object is a regular polygon variant that
  can have various features.
  Instance Variables:
    numSides: number of sides
    radius: distance from the center of the polygon
      to any vertext
    x: x coordinate of the center
    y: y coordinate of the center
    xFactor: "wobble" foctor in the x direction
    yFactor: "wobble" factor in the y direction
  ====================================*/

class Blob {
  
  int numSides;
  int radius;
  int x;
  int y;
  int xFactor;
  int yFactor;
  int r;
  int g;
  int b;
  
  
  Blob(int cx, int cy, int n, int l, int xf, int yf, int red, int green, int blue) {
    
    x = cx;
    y = cy;
    numSides = n;
    radius = l;
    xFactor = xf;
    yFactor = yf;
    
    r = red;
    b = blue;
    g = green;
   
  }
  
  void display() {
   
    float nx;
    float ny;
    int rx, ry;
    
    float sy;
  
    strokeWeight(1);
    
    fill(r,g,b);
    beginShape();
    for( float t = 0; t <= 1; t+=( 1.0/numSides ) ) {
      
      /*
      "wobble" effect is created by adding a random number to each
      x and y coordinate. The larger the x and y factors, the higher
      the possible wobble value could be
      */
      rx = (int)random(xFactor);
      ry = (int)random(yFactor);
      
      nx = radius * cos( 2 * PI * t ) + x + rx;
      ny = radius * sin( 2 * PI * t ) + y + ry;
      
      vertex(nx, ny);
    }      
    endShape();
  }
}
