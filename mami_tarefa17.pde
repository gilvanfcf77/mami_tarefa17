float angle, radius, x, y;

void setup() {
  frameRate(60);
  colorMode(HSB, 360, 100, 100);
  size(600, 600, P3D); 
  angle = 0;
  radius = 0;
  background(0);
}
void draw() {

  x = returnX(radians(angle), radius) + width/2;
  y = returnY(radians(angle), radius) + height/2;
  
  rotateX(PI/4);
  //rotateY(PI/8);
  //rotateZ(PI/8);
  //stroke(angle, 100, 100);
  noStroke();
  ellipse(x, y, 5, 5);
  angle+=1;
  radius+=0.1;
}

float returnX(float a, float r) {

  return r*cos(a);
}

float returnY(float a, float r) {

  return r*sin(a);
}
