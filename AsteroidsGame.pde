Star[] nightSky = new Star[200];
ArrayList <Asteroid> bonks = new ArrayList <Asteroid>();
Spaceship glow = new Spaceship();
public void setup() 
{
  size(600, 600);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
  for (int i = 0; i < 10; i++) {
  bonks.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
        for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }
    for (int i = 0; i < bonks.size(); i++) {
    bonks.get(i).show();
    bonks.get(i).move();
  }
  glow.move();

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
