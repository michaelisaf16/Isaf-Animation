//michael isaf
//House class will extend actor

class House extends Actor {
  //no new feilds 
  
  public House(float xPos, float yPos) {
     super(xPos, yPos); //calls Actor class constructor
    
  }
  
  void drawHouse() {
    int s = size;
    size = 12;
    
    //body of house
      //face of house
    fill(245, 198, 44);
    rect(x-9*s, y-5*s, 18*s, 11*s);
      //side of house
    quad(x-11*s, y-7.5*s, x-9*s, y-5*s, x-9*s, y+6*s, x-11*s, y+3*s);
    
    //draw window
    fill(0, 0, 0, 0);
    rect(x-8*s, y-3*s, 4*s, 4*s);
    
    //draw door
    fill(142, 111, 7);
    rect(x+1*s, y-1*s, 4*s, 7*s);   
   
    //draw roof
      //front part
    fill(229, 7, 48);
    triangle(x-.5*s, y-12*s, x+9*s, y-5*s, x-9*s, y-5*s); 
      //side part
    triangle(x-.5*s, y-12*s, x-9*s, y-5*s, x-11*s, y-7.5*s);
    
    //chimney 
    fill(131, 101, 1);
    quad(x+7*s, y-10*s, x+7*s, y-6.5*s, x+5*s, y-8*s, x+5*s, y-10*s);
   
    
    
  } //end void draw
  
} //end actor
