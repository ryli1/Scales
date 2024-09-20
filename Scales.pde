public boolean shift = true;

/* ADD RANDOM COLORS TO FEATHERS
*/

void setup() {
  size(500, 500);
  frameRate(1);
  noLoop();
}

void draw() {
  background(#314221);
  //featherBackground();
  
  for (int y = -100; y <= 400; y += 120){
    for (int x = -200; x <= 1000; x += 100){
      if (shift == true) {
        scale(x+50, y, ((int)(Math.random()*3)));
      }
      else {
        scale(x, y, ((int)(Math.random()*3)+1));
      }
    }
    shift = !shift;
  }

  if (mousePressed == true) {
    System.out.println(mouseX + ", " + mouseY);
  }
}

void scale(int x, int y, int random) {
 //Feather top
  pushMatrix();
  if (random == 1) {
    fill(#819d3f);

  }
  else {
    fill(#9BAD1C);
  }
  stroke(#638c61);
  strokeWeight(2);
  arc(100+x, 100+y, 90, 140, radians(150), radians(390));
  noStroke();
  quad(63+x, 98+y, 140+x, 98+y, 138+x, 135+y, 63+x, 135+y);
 //Tip of feather curves
  stroke(#638c61);
  beginShape();
  vertex(62+x, 135+y);
  bezierVertex(100+x, 160+y, 100+x, 180+y, 100+x, 250+y);
  bezierVertex(100+x, 180+y, 100+x, 160+y, 137+x, 135+y);
  endShape();
//Feather Insides

  
 //LINES
  //middle line
  stroke(60, 58, 10, 150);
  strokeWeight(0.0005);
  line(100+x, 30+y, 100+x, 180+y);
  //feather lines
  line(100+x, 170+y, 142+x, 110+y);
  line(100+x, 170+y, 58+x, 110+y);
  
  line(100+x, 165+y, 142+x, 100+y); //
  line(100+x, 165+y, 58+x, 100+y);
  
  line(100+x, 160+y, 142+x, 90+y);
  line(100+x, 160+y, 58+x, 90+y);
  
  line(100+x, 155+y, 142+x, 80+y); //
  line(100+x, 155+y, 58+x, 80+y);
  
  line(100+x, 150+y, 143+x, 70+y); 
  line(100+x, 150+y, 57+x, 70+y);
  
  line(100+x, 145+y, 143+x, 60+y); //
  line(100+x, 145+y, 57+x, 60+y);
  
  line(100+x, 140+y, 138+x, 55+y);
  line(100+x, 140+y, 62+x, 55+y);
  
  line(100+x, 135+y, 136+x, 45+y); //
  line(100+x, 135+y, 64+x, 45+y);
  
  line(100+x, 125+y, 129+x, 45+y); //
  line(100+x, 125+y, 67+x, 45+y);
    
  line(100+x, 122.5+y, 128+x, 42.5+y);
  line(100+x, 122.5+y, 72+x, 42.5+y);
  
  line(100+x, 120+y, 125+x, 40+y);
  line(100+x, 120+y, 75+x, 40+y);
  
  line(100+x, 115+y, 120+x, 35+y);
  line(100+x, 115+y, 80+x, 35+y);
  
  line(100+x, 110+y, 115+x, 31+y);
  line(100+x, 110+y, 85+x, 31+y);
  
  line(100+x, 100+y, 107+x, 28+y);
  line(100+x, 100+y, 93+x, 28+y);
  
  noFill();
  stroke(#638c61);
  strokeWeight(2);
  arc(100+x, 100+y, 90, 140, radians(150), radians(390));

  //avocado looking part
  stroke(#66B93E);
  strokeWeight(3);
  fill(#CE8C34);
  beginShape();
  vertex(68+x, 90+y);
  bezierVertex(69+x, 30+y, 129+x, 30+y, 130+x, 90+y);
  bezierVertex(132+x, 135+y, 66+x, 135+y, 68+x, 90+y);
  endShape();
  
  //blue part
  stroke(#144743);
  strokeWeight(1);
  fill(#4ea1ac);
  ellipse(99+x, 95+y, 40, 33);
  //dark middle arc
  noStroke();
  fill(#170648);
  arc(100+x, 95+y, 28, 25, radians(110), radians(425));
  
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
