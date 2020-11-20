Star[] nightSky = new Star[200];
Spaceship glow = new Spaceship();
public void setup() 
{
  size(500, 500);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  glow.move();
      for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }
    glow.show();
}
public void keyPressed() {
 if (key == 'd') {
   glow.turn (10);
    }
    if (key == 'w') {
      glow.accelerate(0.2);
    }
    if (key == 's') {
      glow.accelerate(-0.2);
    }
    if (key == 'a') {
      glow.turn(-10);
    }
    if (key == '1') {
      glow.hyperspace();
    }
}
