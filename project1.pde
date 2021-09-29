void setup() {
  size(900,600);
  noLoop();
  background(random(215,255), 217, 205);
 
 
}


void draw() {

//background pattern...
grass (200,200);
grass (500,500);
grass (500,500);
grass (700,700);
grass (700,700);
grass (700,700);
grass (700,700);
grass (700,700);
grass (800,800);

//trees and their locations...
//center middle
bigtree(400,300);
//upper middle
smalltree(random(295,400), random(-25,-50));
//lower middle
bigtree(500,740);

//lower right
smalltree(random(715,800), random(400,500));
//upper right
bigtree(random(790,900), random(0,100));

//upper left
smalltree(random(0,90), random(0,200));
//lower left
bigtree(0,520);



}

void grass (float grassX, float grassY){
  noStroke();
  fill(#CBFFC9,30);
  ellipse (random(0,width), random(0,height),grassX,grassY);
}
  

void smalltree(float mX, float mY){
  
  //fill color
  fill(random(0,255),212,195,25);;
  noStroke();
  ellipse(mX,mY,210,210);
  
  //small trunk
  noFill();
  stroke(random(0,255),175,158,150);
  strokeWeight(7);
  drawRing(10, mX,mY, 100, 105);
  drawRing(10, mX,mY, 100, 105);
  drawRing(10, mX,mY, 100, 105);

  //small rings
  strokeWeight(1);
  drawRing(3, mX,mY, 1, 6);
  drawRing(3, mX,mY, 6, 10);
  drawRing(3, mX,mY, 10, 12);
  drawRing(3, mX,mY, 12, 14);
  drawRing(3, mX,mY, 14, 16);
  drawRing(3, mX,mY, 16, 20);
  strokeWeight(1.25);
  drawRing(3, mX,mY, 21, 26);
  drawRing(3, mX,mY, 26, 30);
  drawRing(3, mX,mY, 30, 35);
  drawRing(3, mX,mY, 40, 45);
  drawRing(3, mX,mY, 50, 55);
  drawRing(3, mX,mY, 60, 65);
  strokeWeight(1.5);
  drawRing(3, mX,mY, 70, 80);
  drawRing(3, mX,mY, 80, 90);
  drawRing(3, mX,mY, 30, 35);
  drawRing(3, mX,mY, 40, 45);
  drawRing(3, mX,mY, 50, 55);
  drawRing(3, mX,mY, 60, 65);
  drawRing(3, mX,mY, 70, 74);
  drawRing(3, mX,mY, 80, 84);
  
  
  //cracks
  strokeWeight(1);
  line(mX+5,mY+5, mX+50,mY-random(0,25));
  line(mX,mY, mX-17,mY+30);
  
}


void bigtree(float mX, float mY){
  
  //fill color
  fill(random(0,255),212,195,25);
  noStroke();
  ellipse(mX,mY,420,420);
  
  //trunk
  noFill();
  stroke(random(0,255),175,158,150);
  strokeWeight(10);
  drawRing(10, mX,mY, 200, 210);
  drawRing(10, mX,mY, 200, 210);
  drawRing(10, mX,mY, 200, 210);
  drawRing(10, mX,mY, 200, 210);
  drawRing(10, mX,mY, 200, 210);
  drawRing(10, mX,mY, 200, 210);
  
  //rings
  strokeWeight(.75);
  drawRing(3, mX,mY, 2, 4);
  drawRing(3, mX,mY, 4, 5);
  drawRing(3, mX,mY, 7, 9);
  drawRing(3, mX,mY, 9, 12);
  drawRing(5, mX,mY, 12, 14);
  drawRing(5, mX,mY, 14, 16);
  drawRing(8, mX,mY, 20, 23);
  drawRing(8, mX,mY, 25, 29);
  drawRing(8, mX,mY, 30, 33);
  drawRing(8, mX,mY, 37, 40);
  strokeWeight(1);
  drawRing(8, mX,mY, 43, 45);
  drawRing(8, mX,mY, 47, 50);
  drawRing(10, mX,mY, 50, 54);
  drawRing(10, mX,mY, 60, 64);
  drawRing(10, mX,mY, 67, 70);
  drawRing(10, mX,mY, 80, 85);
  drawRing(10, mX,mY, 90, 95);
  drawRing(10, mX,mY, 100, 105);
  drawRing(10, mX,mY, 110, 115);
  drawRing(10, mX,mY, 124, 129);
  drawRing(10, mX,mY, 130, 133);
  drawRing(10, mX,mY, 150, 155);
  drawRing(10, mX,mY, 170, 174);
  drawRing(10, mX,mY, 180, 185);
  
  strokeWeight(1);
  line(mX,mY, mX+random(0,170),mY+random(0,100));
  line(mX,mY, mX+(random(0,100)),mY-random(0,50));
  line(mX,mY, mX-random(0,170),mY+random(0,50));
}


//function that draws the ring variation

void drawRing(float divisions, float centerX, float centerY, float radiusMin, float radiusMax) {
  beginShape();
  for(float angle = 0; angle <= 2* PI + 2* PI/divisions; angle += PI/divisions) {
    float radius = random(radiusMin, radiusMax);
    float x = centerX+  radius * cos(angle);
    float y = centerY + radius * sin(angle);
    curveVertex(x,y);
  }
  endShape(CLOSE);
}