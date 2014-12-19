//Michael Isaf
//Class extends actor

class Moon extends Actor {
  //no new feilds 
  
  public Moon(float xPos, float yPos) {
     super(xPos, yPos); //calls Actor class constructor
    
  }
  
  void drawMoon() {
    int s = size;
    
    fill(218, 236, 245);
    ellipse(x, y, 15*s, 15*s);
    
  }
  
//  void drawSky(int i) {
//      i= 255+ Moon.yPos;
//    
//    fill(31, 152, i);
//    rect(0, 0, width, height);
//    
//  }
  
} //ends class
