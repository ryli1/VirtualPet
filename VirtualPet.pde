void setup() {
  size(500,500);
}

//Shell
void draw() {
  //translate(-40, 40);
  //rotate(radians(-10));
  //ellipse(250, 250, 190, 90);
  noFill();
  beginShape();
  
  vertex(250, 250);
  bezierVertex(100, 100, 400, 50, 300, 300);
  endShape();

}
