public boolean shift = true;



/* ADD RANDOM COLORS TO FEATHERS
*/

void setup() {
  size(500, 500);
  noLoop();
}

void draw() {
  background(#536123);
  //featherBackground();
  
  for (int y = -200; y <= 450; y += 120){
    for (int x = -200; x <= 400; x += 100){
      if (shift == true) {
        scale(x+50, y);
      }
      else {
        scale(x, y);
      }
    }
    shift = !shift;
  }

  if (mousePressed == true) {
    System.out.println(mouseX + ", " + mouseY);
  }
}

void scale(int x, int y) {
  pushMatrix();
 //Feather top
  fill(#6b8d38);
  stroke(#638c61);
  strokeWeight(3);
  arc(100+x, 100+y, 90, 140, radians(150), radians(390), OPEN); //100, 100
 //Tip of feather curves
  beginShape();
  vertex(62+x, 135+y);
  bezierVertex(100+x, 160+y, 100+x, 180+y, 100+x, 210+y);
  bezierVertex(100+x, 180+y, 100+x, 160+y, 137+x, 135+y);
  endShape();
 //Feather Insides
  //avocado looking part
  stroke(#5fab48);
  fill(#715954);
  beginShape();
  vertex(68+x, 90+y);
  bezierVertex(69+x, 30+y, 129+x, 30+y, 130+x, 90+y);
  bezierVertex(132+x, 135+y, 66+x, 135+y, 68+x, 90+y);
  endShape();
  //blue part
  stroke(#144743);
  strokeWeight(1);
  fill(#628ae7);
  ellipse(99+x, 95+y, 40, 33);
  //dark middle arc
  noStroke();
  fill(#170648);
  arc(100+x, 95+y, 28, 25, radians(110), radians(425));
  //middle line
  stroke(#293046);
  strokeWeight(0.5);
  //line(100+x, 100+y, 100+x, 180+y);
  popMatrix();
}

void featherBackground(){
  //Feather Shafts
  stroke(#2d3903);
  strokeWeight(3);
  line(200, 500, 100, 0);
  line(250, 500, 230, 0);
  line(300, 500, 350, 0);
}
