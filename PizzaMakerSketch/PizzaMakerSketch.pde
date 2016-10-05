import processing.sound.*;
SoundFile sound;
void setup(){
  size (500,500);
   fill (255,221,170);
ellipse (250,250,250,250);
fill (255,85,51);
ellipse (250,250,210,210);
fill  (255,204,102);
ellipse (250,250,180,180);

sound = new SoundFile (this,"Audio.wav");
}
void draw(){
 PImage Topping = loadImage ("ppt.gif");
 Topping.resize (50,50);
image (Topping,220,250);
image (Topping,230,300);
image (Topping,200,300);
image (Topping,250,270);
if (mousePressed){
image (Topping, mouseX,mouseY);
sound.play();
}
}