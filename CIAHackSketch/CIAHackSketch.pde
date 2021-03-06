int y = 100; 
int x = 50;
int line;
int index;
int keyCount = 0;
boolean cursorBlink = true;
ArrayList<String> text = new ArrayList<String>();
ArrayList<String> hackerText = new ArrayList<String>();
int cursorColor = 0;
int loadBar = 0;
void setup() {
  fullScreen();

  //Add your text to the hackerTextList
  hackerText.add("");
  hackerText.add("for(int i = ");
  hackerText.add("");
  hackerText.add("void initiate ");
  hackerText.add("~~~");
  hackerText.add("Initiating access ");
  hackerText.add("password ");
  hackerText.add("***");
  hackerText.add("***");
  hackerText.add("*** ");
  hackerText.add("");
  hackerText.add("ArrayList<String> alphabetList = new ArrayList<String>();");
  hackerText.add("");
  hackerText.add("int position = -1 ");
  hackerText.add("");
  hackerText.add ("password denied ");
}
void draw() {
  background(0);

  displayText();
  if (keyCount> 50)
    accessGranted();
}

void keyPressed() {
  text.add(hackerText.get(index%hackerText.size()));
  index++;

  keyCount++;
  if (keyCount>50) {
    System.exit(0); 
    
    
}
}

void displayText() {
  int yOffset = 0;
  int xOffset = 0;
  fill(0, 255, 0);
  textSize(20);
  for (String str : text) {
    if (text.indexOf(str)%4==0) {
      yOffset+=30;
      xOffset=0;
    }
    text(str, x+xOffset, y+yOffset);
    if (y+yOffset > height-50) {
      y-=100;
    }
    xOffset += textWidth(str);
  }
  drawCursor(xOffset, yOffset);
  yOffset=0;
}


void drawCursor(int xOffset, int offset) {
  strokeWeight(1);
  int m = millis();
  if (m%1000<500) {
    cursorColor = 255;
  } else {
    cursorColor = 0;
  }
  stroke(0, cursorColor, 0);
  line(x+xOffset, y+offset+5, x+xOffset, y+offset-18);
}

void accessGranted() {
  fill(50, 100, 50);
  textSize(60);
  String access = "Access Denied";  

  fill(cursorColor, 0, 0);
  //textSize(80);
  if (loadBar > (width)) {
    access = "ACCESS GRANTED.";
    fill(0, cursorColor, 0);
  } else {
    loadBar++;
    strokeWeight(20);
    stroke(255, 0, 0);
    line(width/3, height /2, width/3+(loadBar%(width/4)), height/2);
  }
  if (cursorColor == 255)
    text(access, width/3, height/4);
  noFill();
  strokeWeight(1);
  rect(width/3, height /6, textWidth(access), 80);
}

void accessDenied() {
  String access = "Access Denied";  
  fill(cursorColor, 0, 0);
  loadBar++;
  strokeWeight(20);
  stroke(255, 0, 0);
  line(width/3, height /2, width/3+(loadBar%(width/4)), height/2);
  textSize(60);
  if (cursorColor == 255)
    text(access, width/3, height/4);
    
  

  
  }