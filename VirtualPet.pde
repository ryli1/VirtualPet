void setup() {
  size(500,500);
  frameRate(120);
  background(#B6DFED);
  translate(-30, 0);
  
  
  rock();
  shadow();
  head();
  tailAndLegs();
  shell();
  

}

void draw() {
  //background();
  strokeWeight(1);
}

void shell() {
  noStroke();
  shellRidges();
  pushMatrix();
  translate(-40, 40);
  rotate(radians(-10));
  fill(#BADB37);
  ellipse(250, 266, 170, 57); //lower shell
  fill(#3F6C00);
  ellipse(250, 250, 205, 82); //upper shell
  stroke(0);
  popMatrix();
  
  //SHELL MARKINGS
  translate(30, 0);
  stroke(#484536);
  strokeWeight(1);
  line(287, 235, 303, 207);
  line(247, 194, 248, 223);
  line(248, 223, 288, 235);
  
  line(248, 223, 228, 244);
  line(228, 244, 197, 230);
  line(197, 230, 195, 195);
  line(228, 244, 228, 265);
  
  line(197, 231, 184, 249);
  line(184, 249, 156, 240);
  line(156, 240, 145, 216);
  line(184, 249, 184, 270);
  
  line(156, 240, 135, 260);
  line(135, 260, 119, 251);
  
  beginShape();
  noFill();
  vertex(119, 251);
  vertex(134, 260);
  vertex(182, 270);
  vertex(228, 267);
  vertex(276, 251);
  vertex(288, 237);
  vertex(316, 230);
  endShape();
  
  line(130, 274, 135, 260);
  line(163, 266, 155, 282);
  line(195, 271, 197, 285);
  line(223, 267, 226, 282);
  line(256, 259, 263, 273);
  line(285, 242, 296, 255);
  
  stroke(#9CCE21);
  strokeWeight(.5);
  line(248, 233, 257, 250);
  line(205, 258, 206, 243);
  line(158, 248, 162, 260);
  
}

void shellRidges(){
  fill(#3F6C00);
  beginShape();
  vertex(340, 210);
  vertex(280, 190);
  vertex(275, 195);
  vertex(225, 193);
  vertex(220, 199);
  vertex(175, 215);
  vertex(160, 237);
  ellipse(244, 242, 160, 50);
  endShape(CLOSE);
}

void head(){
  fill(#BCDE69);
  noStroke();
  ellipse(400, 181, 20, 20); //left eye
  
  //head part
  fill(#A9C606);
  beginShape();
  vertex(333, 208);
  bezierVertex(430, 130, 460, 220, 330, 242); 
  endShape();
  beginShape();
  vertex(395, 179);
  bezierVertex(415, 160, 435, 200, 400, 187); //lil bump on tip of nose
  endShape();
  beginShape();
  noFill();
  strokeWeight(1.5);
  stroke(#A7D19C);
  vertex(360, 189);
  bezierVertex(349, 205, 362, 229, 380, 225);  //crease thing on head
  endShape();
  pushMatrix();
  fill(#FA360F);
  noStroke();
  rotate(radians(-15.5));
  translate(-70, 85);
  ellipse(374, 206, 35, 10); //red marking
  popMatrix();
  stroke(#AF8F49);
  strokeWeight(1.5);
  line(415, 189, 398, 201); //mouth
  
  strokeWeight(.4);
  stroke(#BCDE69);
  fill(#9EED7C);
  ellipse(390, 185, 20, 20); //right eye
  fill(#000000);
  noStroke();
  quad(381, 188, 400, 181, 401, 184, 382, 191);
  ellipse(391, 186, 7, 7);
}

void tailAndLegs(){
  fill(#A9C606);
  beginShape();
  pushMatrix();
  translate(25, 0);
  vertex(125, 262);
  bezierVertex(90, 400, 110, 314, 136, 275); //tail
  endShape();
  fill(#3C3F43);
  quad(125, 262, 140, 268, 133, 279, 123, 268); //tail shadow
  fill(#A9C606);
  beginShape();
  vertex(150, 280);
  bezierVertex(126, 329, 185, 325, 190, 332);//back leg
  bezierVertex(130, 300, 195, 347, 188, 319);
  endShape();
  beginShape();
  vertex(302, 246);
  bezierVertex(260, 310, 299, 309, 320, 310);
  bezierVertex(320, 310, 335, 302, 316, 296);
  endShape();
  popMatrix();
}

void rock() {
   fill(#81878E);
   noStroke();
   bezier(-30, 310, 130, 208, 424, 175, 530, 310);
   rect(-5, 310, 550, 550);
}

void shadow() {
  pushMatrix();
  translate(-40, 40);
  rotate(radians(-10));
  fill(#3C3F43);
  ellipse(250, 280, 190, 50); //shadow
  ellipse(360, 270, 75, 25);
  translate(30, -10);
  popMatrix();
}
