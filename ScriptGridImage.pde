import processing.svg.*;
boolean bSave = false;
int xGrid = 8;
int yGrid = 8;

void setup(){
  size(512, 512);
}

void draw(){
  if(bSave){
    println("begin save");
    beginRecord(SVG, "grid.svg");
  }
  stroke(255,0,0);
  background(255);
  
  stroke(0);
  float gw = 1.0*width/xGrid;
  float gh = 1.0*height/yGrid;
  for(int x = 0; x <= xGrid; ++x){
    line(x*gw, 0, x*gw, height);       
  } 
  for(int y = 0; y <= yGrid; ++y){
    line(0, y*gh, width, y*gh); 
  }
  
  noStroke();
  fill(0);
  for(int y = 0; y <= yGrid; ++y){
    for(int x = 0; x <= xGrid; ++x){
      ellipse(x*gw, y*gh, gw/12, gh/12);
    }  
  }
  
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
