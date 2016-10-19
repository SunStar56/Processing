void setup () {
  size  (300, 500);
  int ic1 = 102;
  PImage pic = loadImage ("pic.jpeg");
  pic.resize (300, 500);
  image (pic, 0, 0);
}

void draw() {


  if (mouseX%2==0) {
    fill(102, 0, 0);
  } else {
    fill (204, 238, 255);
  }
  ellipse (182, 215, 30, 35);
  ellipse (85, 230, 30, 35);
  fill (0, 0, 0);
  ellipse (182, 215, 10, 15);
  ellipse (85, 230, 10, 15);
  println (mouseX, mouseY);
}

