//Segment class 
//wil extend actor

class Segment extends Actor {
  float len; // length
  float weight = 5; //thickness
  
  //constructor 
  public Segment (float x, float y) {
    //call the super
    super(x, y);
    len = size; //default
    
  }
  
  public Segment (float x, float y, float d, float s) {
    super(x, y); 
    direction = d;
    len = s; 
    
  }
  
  public Segment() {
    
  }
  
  //draw line function: do all the math
  public void drawLine() {
    //calculate the end points 
    float x2 = x + len * cos(radians(direction));
    float y2 = y + len * sin(radians(direction));
    stroke(penRed, penGreen, penBlue);
    strokeWeight(weight);
    line(x, y, x2, y2);
    
  }
  
  public float getEndX() {
    float x2 = x + len*cos(radians(direction));
    return x2;
    
  }
  
  public float getEndY() {
    float y2 = y + len*sin(radians(direction));
    return y2;
    
  }
  
  
}
