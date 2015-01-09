//skeleton class
//will extend actor
//Michael Isaf

class Skeleton extends Actor {
  //fields for skeleton
  //body
  Segment body;
  Segment kneck;
  
  //left side
  Segment luleg;
  Segment llowleg;
  Segment lshoulder;
  Segment luarm;
  Segment llowarm;
  
  //right side
  Segment ruleg;
  Segment rlowleg;
  Segment rshoulder;
  Segment ruarm;
  Segment rlowarm;
  
  public Skeleton(float xPos, float yPos) {
    super (xPos, yPos);
    //initialize segments
    body = new Segment (xPos, yPos, -90, 130);
    body.weight = 12; 
    body.setPenColor(234, 168, 85);
    
    kneck = new Segment (body.getEndX(), body.getEndY(), -90, 25);
    kneck.weight = 7; 
    kneck.setPenColor(152, 156, 162);
    
    luleg = new Segment(xPos, yPos, 45, 70);
    luleg.weight = 10;
    luleg.setPenColor(29, 157, 5);
    
    llowleg = new Segment(luleg.getEndX(), luleg.getEndY(), 90, 66);
    llowleg.weight = 6;
    llowleg.setPenColor(5, 82, 232);
    
    lshoulder = new Segment(body.getEndX(), body.getEndY(), 0, 20);
    lshoulder.weight = 10;
    lshoulder.setPenColor(152, 156, 162);
    
    luarm = new Segment(lshoulder.getEndX(), lshoulder.getEndY(), 45, 35);
    luarm.weight = 9;
    luarm.setPenColor(224, 240, 22);
    
    llowarm = new Segment(luarm.getEndX(), luarm.getEndY(), 45, 30);
    llowarm.weight = 7;
    llowarm.setPenColor(26, 28, 0);
    
    ruleg = new Segment(xPos, yPos, -215, 70);
    ruleg.weight = 10;
    ruleg.setPenColor(29, 157, 5);
    
    rlowleg = new Segment(ruleg.getEndX(), ruleg.getEndY(), 90, 65);
    rlowleg.weight = 6;
    rlowleg.setPenColor(5, 82, 232);
    
    rshoulder = new Segment(body.getEndX(), body.getEndY(), 180, 20);
    rshoulder.weight = 10;
    rshoulder.setPenColor(152, 156, 162);
    
    ruarm = new Segment(rshoulder.getEndX(), rshoulder.getEndY(), -215, 35);
    ruarm.weight = 9;
    ruarm.setPenColor(224, 240, 22);
    
    rlowarm = new Segment(ruarm.getEndX(), ruarm.getEndY(), -215, 30);
    rlowarm.weight = 7;
    rlowarm.setPenColor(26, 28, 0);
    
  }
    
    public void drawFrame() {
      //call segment.drawLine() for all the body parts
      body.drawLine();
      
      kneck.drawLine();
      kneck.goTo(body.getEndX(), body.getEndY());
      
      //head
      strokeWeight(5);
      ellipse(kneck.getEndX(), kneck.getEndY(), 30, 30);
      
      //left side
      luleg.drawLine();
      
      llowleg.goTo(luleg.getEndX(), luleg.getEndY());
      llowleg.drawLine();
      
      lshoulder.goTo(body.getEndX(), body.getEndY());
      lshoulder.drawLine();
      
      luarm.goTo(lshoulder.getEndX(), lshoulder.getEndY());
      luarm.drawLine();
      
      llowarm.goTo(luarm.getEndX(), luarm.getEndY());
      llowarm.drawLine();
      
      //right side
      ruleg.drawLine();
      
      rlowleg.goTo(ruleg.getEndX(), ruleg.getEndY());
      rlowleg.drawLine();
      
      rshoulder.goTo(body.getEndX(), body.getEndY());
      rshoulder.drawLine();
      
      ruarm.goTo(rshoulder.getEndX(), rshoulder.getEndY());
      ruarm.drawLine();
      
      rlowarm.goTo(ruarm.getEndX(), ruarm.getEndY());
      rlowarm.drawLine();
      
    }
    
    //act() function: all the movments/activities for skeleton
    public void act() {
      drawFrame();
      
      if (keyPressed) {
        
        //body 
        if (key == 'w') {
          body.turn(-2);
        }
        if (key == 'q') {
          body.turn(2);
        }
        
        //kneck
        if (key == 'r') {
          kneck.turn(-4);
        }
        if (key == 'e') {
          kneck.turn(4);
        }
        
        //uper legs
        if (key == 'x') {
          luleg.turn(1);
        }
        if (key == 'z') {
          luleg.turn(-1);
        }
        if (key == 's') {
          ruleg.turn(1);
        }
        if (key == 'a') {
          ruleg.turn(-1);
        }
        
        //lower legs
        if (key == 'v') {
          llowleg.turn(1);
        }
        if (key == 'c') {
          llowleg.turn(-1);
        }
        if (key == 'f') {
          rlowleg.turn(1);
        }
        if (key == 'd') {
          rlowleg.turn(-1);
        }
        
        //shoulders
        if (key == 'n') {
          lshoulder.turn(1);
        }
        if (key == 'b') {
          lshoulder.turn(-1);
        }
        if (key == 'h') {
          rshoulder.turn(1);
        }
        if (key == 'g') {
          rshoulder.turn(-1);
        }
        
        //upper arms
        if (key == ',') {
          luarm.turn(1);
        }
        if (key == 'm') {
          luarm.turn(-1);
        }
        if (key == 'k') {
          ruarm.turn(1);
        }
        if (key == 'j') {
          ruarm.turn(-1);
        }
        
        //lower arms
        if (key == '/') {
          llowarm.turn(1);
        }
        if (key == '.') {
          llowarm.turn(-1);
        }
           if (key == ';') {
          rlowarm.turn(1);
        }
        if (key == 'l') {
          rlowarm.turn(-1);
        }
        
        //crazy key
        if (key == 'p') {
          body.turn(2);
          kneck.turn(8);
          rlowarm.turn(-3);
          llowarm.turn(1);
          ruarm.turn(5);
          luarm.turn(-7);
          rshoulder.turn(-4);
          lshoulder.turn(2);
          rlowleg.turn(3);
          llowleg.turn(-1);
          ruleg.turn(-5);
          luleg.turn(7);
        }
        
      } //end if
      
    }
  
  
} //end skeleton
