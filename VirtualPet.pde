void setup() {
  size(500,500);
  frameRate(50);
  

}

void draw() {
  background(255);
  strokeWeight(1);
  shell();
   

}

void shell() {
  noStroke();
  shellRidges();
  fill(#138E34);
  translate(-40, 40);
  rotate(radians(-10));
  ellipse(250, 250, 205, 82);
  translate(40, -40);
  rotate(radians(10));
  stroke(0);
}

void shellRidges(){
  fill(#138E34);
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

void mouseClicked() {
  System.out.println("X: " + mouseX);
  System.out.println("Y: " + mouseY);
}
