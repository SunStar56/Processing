int x = mouseX;
int y = mouseY;
int x2 = mouseX;
int y2 = mouseY;
int x3 = mouseX;
int y3 = mouseY;
int bnum = 0
  void setup() {
  size(500, 500);
  
}
void draw() {
  background(200, 200, 200);
  noStroke();
  fill(119,153,35);
  rect(176, 103, 12, 32);
  fill(255, 85, 85);
  ellipse(150, 200, 150, 150);
  ellipse(212, 200, 150, 150);
  fill(200,200,200);
  ellipse(x,y,50,50);
  ellipse(x2,y2,50,50);

 
}
