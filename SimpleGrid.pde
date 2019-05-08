class SimpleGrid{
  SimpleGrid(){
  }
  
  void draw(int xGrid, int yGrid){
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
  }
}
