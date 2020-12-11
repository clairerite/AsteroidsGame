class Asteroid extends Floater {
  private double rotSpeed;
  public Asteroid() {
    rotSpeed = Math.random()*2 - 1;
    corners = 8;
    xCorners = new int[8];
    yCorners = new int[8];
    xCorners[0] = -4;
    yCorners[0] = -8;
    xCorners[1] = -8;
    yCorners[1] = -4;
    xCorners[2] = -8;
    yCorners[2] = 4;
    xCorners[3] = -4;
    yCorners[3] = 8;
    xCorners[4] = 4;
    yCorners[4] = 8;
    xCorners[5] = 8;
    yCorners[5] = 4;
    xCorners[6] = 8; 
    yCorners[6] = -4;
    xCorners[7] = 4;
    yCorners[7] = -8;
    myColor = color(153);
    myCenterX = Math.random()*600;
    myCenterY = Math.random()*600;
    myXspeed = Math.random()*3 - 1;
    myYspeed = Math.random()*3 - 1;
    myPointDirection = 0;
  }
  public void move () {
    turn(rotSpeed);
    super.move();
  }
}
