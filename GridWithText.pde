class GridWithText{
  GridWithText(){
  }
  
  int largeText = 26;
  void draw(int xGrid, int yGrid){
    background(255);
    float gw = 1.0*width/xGrid;
    float gh = 1.0*height/yGrid;
    
    noStroke();
    for(int y = 0; y < yGrid; ++y){
      for(int x = 0; x < xGrid; ++x){
        color c = (x+y)%2==1?40:120; 
        fill(c);
        rect(x*gw, y*gh, gw, gh);
      }  
    }
    
    stroke(255);
    strokeWeight(2);
    
    for(int x = 0; x <= xGrid; ++x){
      line(x*gw, 0, x*gw, height);       
    } 
    for(int y = 0; y <= yGrid; ++y){
      line(0, y*gh, width, y*gh); 
    }
    
    noStroke();
    fill(255);
    for(int y = 0; y <= yGrid; ++y){
      for(int x = 0; x <= xGrid; ++x){
        ellipse(x*gw, y*gh, 12, 12);
      }  
    }
    
    textSize(largeText);
    textAlign(CENTER, CENTER);
    fill(255);
    for(int y = 0; y < yGrid; ++y){
      for(int x = 0; x < xGrid; ++x){
        String s = getCharForNumber(y+1)+x;
        text(s, (x+0.5)*gw, (y+0.5)*gh);
      }  
    }
  }
  
  private String getCharForNumber(int i) {
      return i > 0 && i < 27 ? String.valueOf((char)(i + 'A' - 1)) : null;
  }
}
