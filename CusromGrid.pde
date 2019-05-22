class CustomGrid{
  CustomGrid(){
  }
  int largeText = 26;
  
  void draw(int xGrid, int yGrid){
    background(0);
    float gw = 1.0*width/xGrid;
    float gh = 1.0*height/yGrid;
    // sub grid
    stroke(127);
    strokeWeight(1.0);
    for(int x = 0; x < xGrid; ++x){
      line((x+0.5)*gw, 0, (x+0.5)*gw, height);       
    } 
    for(int y = 0; y < yGrid; ++y){
      line(0, (y+0.5)*gh, width, (y+0.5)*gh); 
    }
    
    // main grid
    stroke(255);
    strokeWeight(2.0);
    for(int x = 0; x <= xGrid; ++x){
      line(x*gw, 0, x*gw, height);       
    } 
    for(int y = 0; y <= yGrid; ++y){
      line(0, y*gh, width, y*gh); 
    }
    
    textFont(font);
    textSize(largeText);
    fill(255);
    textAlign(CENTER, CENTER);
    text("0,0", gw/4.0, gh/4.0);
    textAlign(CENTER, CENTER);
    text("1,0", width-gw/4.0, gh/4.0);
    textAlign(CENTER, CENTER);
    text("0,1", gw/4.0, height-gh/4.0);
    textAlign(CENTER, CENTER);
    text("1,1", width-gw/4.0, height-gh/4.0);
  }
}
