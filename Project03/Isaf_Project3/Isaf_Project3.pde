//Project 3
//Michael Isaf

//instance of a segment 
Segment arm = new Segment(400, 300, -90, 100);
Segment hand = new Segment(300, 200, 90, 50);
Segment arm2 = new Segment(200, 400, -45, 75);
Segment arm3 = new Segment(250, 350, -60, 85);

//instances of skeleton
Skeleton mySkeleton = new Skeleton(400, 300);

void setup() {
  size(800, 600);
  background(240, 240, 240);
  
  arm.weight = 10;
  arm.setPenColor(255, 0, 0);
  
  hand.weight = 9;
  hand.setPenColor(0, 0, 255);
  
  arm2.weight = 8;
  arm2.setPenColor(0, 255, 0);
  
  arm3.weight = 7;
  arm3.setPenColor(255, 0, 255);
  
}

void draw() {
  background(240, 240, 240);
  
//  arm.drawLine();
//  arm.turn(2);
//  
//  hand.goTo(arm.getEndX(), arm.getEndY());
//  hand.drawLine();
//  hand.turn(3);
//  
//  arm2.goTo(hand.getEndX(), hand.getEndY());
////  arm2.drawLine();
//  arm2.turn(4);
//  
//  arm3.goTo(arm2.getEndX(), arm2.getEndY());
////  arm3.drawLine();
//  arm3.turn(7);
//  
////  ellipse(arm3.x, arm3.y, 20, 20);
//  strokeWeight(3);
//  ellipse(arm3.getEndX(), arm3.getEndY(), 20, 20);
//  ellipse(arm2.getEndX(), arm2.getEndY(), 10, 10);

  mySkeleton.act();
  
  
}
