//Michael Isaf
//Project 1

// drawSnowman
void drawSnowman(int x, int y, int s) {
 fill(240, 240, 240); //white color
  
  //lower circle
  ellipse(x, y+6*s, 11*s, 11*s);
  
  //mid circle
  ellipse(x, y, 8*s, 8*s); 
  
  //head
  ellipse(x, y-5*s, 5*s, 5*s);
  
  //right eye
  fill(0, 0, 0); //black
  ellipse(x-1*s, y-5.75*s, .75*s, .75*s);
  //left eye
  ellipse(x+1*s, y-5.75*s, .75*s, .75*s);
  
  //nose
  fill(255, 203, 13);
  triangle(x+.5*s, y-4*s, x+.5*s, y-5*s, x+2*s, y-4*s);
  
  //hat
  fill(0, 240, 0);
  //top of hat
  rect(x-1*s, y-11*s, 3*s, 3*s);
  //brim of hat 
  rect(x-3*s, y-8*s, 6*s, 1*s);
  
  //mouth
  fill(240, 240, 240);
  arc(x, y-4.5*s, 4*s, 2*s, 0, PI);
  
}

void drawTree(int x, int y, int s) {
  
  //draw stump
  fill(95, 73, 17);
  rect(x-1*s, y+5*s, 2*s, 3*s);
  
  //bottom part of tree
  fill(20, 250, 29);
  stroke(5, 129, 24);
  //strokeWieght(
  quad(x-6*s, y+2*s, x+6*s, y+2*s, x+9*s, y+5*s, x-9*s, y+5*s);
  
  //part 2 of tree
  quad(x-5*s, y-.5*s, x+5*s, y-.5*s, x+7.5*s, y+2*s, x-7.5*s, y+2*s);
  
  //part 3 of tree
  quad(x-3.5*s, y-3*s, x+3.5*s, y-3*s, x+6*s, y-.5*s, x-6*s, y-.5*s);
  
  //top of tree
  triangle(x-4*s, y-3*s, x, y-7*s, x+4*s, y-3*s);
  
  //parts of the star
  fill(242, 250, 20, 200);
  stroke(0, 0, 0, 0);
    //mid of star
  rect(x-1*s, y-9*s, 2*s, 2*s);
    //bottom ray
  triangle(x-1*s, y-7*s, x+1*s, y-7*s, x, y-5*s);
    //right ray
  triangle(x+1*s, y-7*s, x+3*s, y-8*s, x+1*s, y-9*s);
    //top ray
  triangle(x-1*s, y-9*s, x+1*s, y-9*s, x, y-11*s);
    //left ray
  triangle(x-1*s, y-9*s, x-3*s, y-8*s, x-1*s, y-7*s);
    
  //garland
  fill(0, 0, 0, 0);
  strokeWeight(4);
  stroke(255, 0, 0);
    //arc 1
  arc(x, y, 13*s, 10*s, .5, PI/1.15);
    //Arc 2
  arc(x, y, 10*s, 4*s, 0, PI);
    //arc 3
  arc(x, y-3*s, 7*s, 5*s, 0, PI);
    //arc 4
  arc(x, y-5*s, 4*s, 4*s, 0, PI);
  
  //ornaments
  fill(0, 0, 255, 200);
  strokeWeight(.5);
  stroke(0, 0, 0);
    //cirlce 1
  fill(170, 0, 80);
  ellipse(x-1*s, y-5*s, 1*s, 1*s);
    //circle 2
  fill(90, 20, 170);
  ellipse(x+2*s, y-4*s, 1.25*s, 1.25*s);
    //circle 3
  fill(242, 22, 151, 200);
  ellipse(x-2.5*s, y-2*s, 1.4*s, 1.4*s);
    //cricle 4
  fill(23, 202, 232, 150);
  ellipse(x+4*s, y-1*s, 1.3*s, 1.3*s);
    //Circle 5
  fill(252, 141, 36, 250);
  ellipse(x+1*s, y, 1.3*s, 1.3*s);
    //cirlce 6
  fill(252, 202, 36, 230);
  ellipse(x-5*s, y+.5*s, 1.5*s, 1.5*s);
    //circle 7
  fill(36, 156, 252, 240);
  ellipse(x+6*s, y+1*s, 1.2*s, 1.2*s);
    //circle 8
  fill(176, 36, 252, 250);
  ellipse(x-7*s, y+5*s, 2*s, 2*s);
    //circle 9
  fill(252, 36, 213, 240);
  ellipse(x-1*s, y+3*s, 1.4*s, 1.4*s);
    //cirlce 10
  fill(247, 75, 89, 255);
  ellipse(x+5*s, y+4*s, 1.35*s, 1.35*s);
  
}

void setup() {
 size(600, 400);
 background(0, 255, 232);
// drawSnowman(300, 200, 10);
// drawSnowman(400, 200, 5);
 drawTree(300, 200, 10);
  
}

void draw() {
//  background(0, 255, 232);
//  drawSnowman(mouseX, mouseY, 5);
//  drawTree(mouseX, mouseY, 10);
  
}
