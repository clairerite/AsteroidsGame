class Star 
{
  private int myX, myY;
  public Star() {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
  }
  public void show() {
    fill ((int)(Math.random()*230), (int)(Math.random()*200) +30, (int)(Math.random()*100));
    ellipse(myX, myY, 3.5, 3.5);
    noStroke();
  }
}
