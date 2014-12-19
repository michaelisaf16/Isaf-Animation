//Actor class
//michael Isaf

class Actor {
  
  //fields
  float x;
  float y; 
    //colors for fill
  int fillRed= 0;
  int fillGreen= 0;
  int fillBlue= 0;
    //colors for pen
  int penRed= 0; 
  int penGreen= 0; 
  int penBlue= 0;
    //dimensions of class
  int size= 10;
  int wid= 50;
  int hie= 50;
  float dx= 0;
  float dy= 0;
  
  float velocity = 0;
  float direction = 0;
 
 //oconstructor 1
  public Actor(float xPos, float yPos){
    x= xPos;
    y= yPos;
   
  }
 
 //constructor blank
  public Actor() {
  } 
  
  //set fill and pen color
  void setColor(int r, int g, int b) {
    fillRed= r;
    fillGreen= g;
    fillBlue= b;
    
  }
  
  void setPenColor(int r, int g, int b) {
    penRed= r;
    penGreen=g; 
    penBlue= b;
    
  }
  
  //move and goTo functions
  void move() {
    computeVector();
    x = x - dx;
    y = y + dy;
    
  }
    
   void goTo(float xPos, float yPos) {
     x = xPos;
     y = yPos;
     
   }
   
   //bounceEdge
   void bounceEdge() {
     if (x > width || x < 0) {
       //dx = dx * -1;
       direction -= 2 * (0 + direction);
     }
     if (y> height || y < 0) {
       //dy = dy * -1;
       direction -= 2 * (90 - direction);
     }
   }
     
    //setDX and setDY
    void setDX(int xVel) {
      dx = xVel;
    }
    
    void setDY(int yVel) {
      dy = yVel;
    }
    
    //rectangle function 
    void drawRect() {
      stroke(penRed, penGreen, penBlue);
      fill(fillRed, fillGreen, fillBlue);
      rect(x, y, wid, hie);
    }
    
    //ellipse function
    void drawEllipse() {
      stroke(penRed, penGreen, penBlue);
      fill(fillRed, fillGreen, fillBlue);
      ellipse(x, y, wid, hie);
    }
      
    //triangle function
    void drawTri() {
      stroke(penRed, penGreen, penBlue);
      fill(fillRed, fillGreen, fillBlue);
      triangle(x, y, x + wid, y, x + (wid/2), y + hie);
    }
    
//    void drawSky(int i) {
//      i= 255+ Moon.yPos;
    
//    fill(31, 152, i);
//    rect(0, 0, width, height);
    
//  }
  
  public void computeVector() {
    dx = velocity * 16*cos(radians(direction*(.4)));
    dy = velocity * 16*sin(radians(direction*(.4)));
    
  } //end compute Vector
  
  public void turn(float t) {
    direction += -t; //changes the direction ofo the object by t
    
  } //end turn
  
} //end actor
