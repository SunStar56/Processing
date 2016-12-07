PImage donkey;
PImage tail;
PImage bg;
boolean pinned = false;
int tailx = 0;
int taily = 0;
void setup(){
  size (800, 535);
  donkey = loadImage("Donkey.jpg");
  background (donkey);
  tail = loadImage ("tail.png");
  tail.resize(100, 200);
  bg = loadImage("bg.jpg");
  bg.resize (800,535);
  
}
void draw(){
  
  if(mouseX<50 && mouseX>0 && mouseY<50 && mouseY>0){
 background(donkey);
  }else{
 }
  if(mousePressed){
  image (tail, mouseX, mouseY); 
pinned = true;
tailx = mouseX;
taily = mouseY;
}
if(pinned == true){
image(tail,tailx,taily);
if(tailx>667&&tailx<767);
println("potatoooo");
}

rect(667, 101,100,200);
rect(0,0,50,50);
println(mouseX, mouseY);
}
