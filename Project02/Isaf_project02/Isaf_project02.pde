//Michael Isaf
//Actor class: Project 02
//Making classes

//instances of actor
//Actor rebecca = new Actor(300, 200);
Actor ground = new Actor(0, 360);
//Actor michael = new Actor(200, 200);
Tree rebecca = new Tree(430, 390);
//Actor guy = new Actor(250, 150);
Actor test = new Actor(300, 200);
Snow snow = new Snow();
House guy = new House(500, 400);
Moon michael = new Moon(770, 400);
float g = 100;
float b = 200;


//setup function
void setup() {
  size(800, 600);
  background(240, 240, 240);
  
  //set rebecca's values
  rebecca.setColor(0, 0, 255); //blue
  rebecca.setPenColor(255, 0, 0); //red
  rebecca.wid = 100;
  rebecca.hie = 100;
  rebecca.setDX(10);
  rebecca.setDY(10);
  
  //set ground's values
  ground.setColor(80, 201, 16); //green
  ground.wid = 800;
  ground.hie = 600;
  
  
//  joshua.setDX(15);
//  joshua.setDY(15);
  
  //set michael's values
  michael.setColor(55, 232, 5);
  michael.wid = 30;
  michael.hie = 35;
  michael.setDX(20);
  michael.setDY(20);
  michael.velocity = 1;
  michael.direction = 270;
  
  //set test's values
  test.velocity = -5;
  test.direction = -45;
  
  //set guy's values
  guy.setColor(55, 5, 240);
  guy.wid = 30;
  guy.hie = 35;
  guy.setDX(20);
  guy.setDY(20);
  
  
}

//draw function
void draw() {
  
  //make background get brighter as moon gets higher in sky
  //i can't get it to work totally
  if(michael.dy < 1.5) { 
    g += 1;
    b += 1;
  }
  else {
    b -= 1;
    g -= 1;
  }
  
//  background(12, g, b);
//  
//  if(michael.dy > 100) {
//    b += -1;
//    g += -1;
//  }

  background(12, g, b);

  

//  rebecca.drawRect();
//  rebecca.move();
//  rebecca.bounceEdge();
  
//  joshua.drawRect();
//  joshua.move();
//  joshua.bounceEdge();
  
//  michael.drawEllipse();
  
//  guy.drawTri();


//  test.move();
//  test.drawEllipse();
//  test.turn(5);
 
  michael.drawMoon();
  michael.move();
  michael.turn(5);
 
  ground.drawRect();
  guy.drawHouse();
  
  snow.makeSnow();
  rebecca.drawTree();
  
  
  
  
  
}
