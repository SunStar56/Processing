PFont myFont;
void setup(){

  size (1500,1500);
textSize (50);
// Uncomment the following two lines to see the available fonts 
  String[] fontList = PFont.list();
  printArray(fontList);
  myFont = createFont("Papyrus", 48);
  textFont(myFont);

}

void draw (){
  fill (34,136,255,100);
 ellipse (550,500,500,500);
   fill (255,255,255);
 text ("Artist", 500,600);
 fill (255,255,255);
 text ("Cellist", 200,350);
    fill (0,221,68,100);
 ellipse (350,350,500,500);
   fill (255,255,255);
   text ("Gamer",800,350);
  fill(255,68,68,100);
 ellipse (750,350,500,500); 
 
}

