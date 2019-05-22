import processing.svg.*;
boolean bSave = false;
SimpleGrid simpleGrid = new SimpleGrid();
GridWithText gridWithText = new GridWithText();
GridWithColor gridWithColor = new GridWithColor();
CustomGrid customGrid = new CustomGrid();
PFont font;
// The font must be located in the sketch's 
// "data" directory to load successfully

void setup(){
  size(1024, 1024);
  font = createFont("SansSerif", 32);
  textFont(font);
}

void draw(){
  if(bSave){
    println("begin save");
    beginRecord(SVG, "grid.svg");
  }
  
  
  //simpleGrid.draw(8, 8);
  //gridWithText.draw(8, 8);
  //gridWithColor.draw(8, 8);
  customGrid.draw(8, 8);
  
  if(bSave){
    endRecord();
    println("end save");
    bSave = false;
    exit();
  }
}

void keyPressed(){
  switch(key){
    case 's':
      bSave = true;
      break;
    default:
      break;
  }
}
