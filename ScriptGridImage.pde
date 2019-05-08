import processing.svg.*;
boolean bSave = false;
SimpleGrid simpleGrid = new SimpleGrid();
GridWithText gridWithText = new GridWithText();
GridWithColor gridWithColor = new GridWithColor();

void setup(){
  size(1024, 1024);
}

void draw(){
  if(bSave){
    println("begin save");
    beginRecord(SVG, "grid.svg");
  }
  
  background(255);
  //simpleGrid.draw(8, 8);
  //gridWithText.draw(8, 8);
  gridWithColor.draw(8, 8);
  
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
