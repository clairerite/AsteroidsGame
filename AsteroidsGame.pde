Star[] nightSky = new Star[200];
ArrayList <Asteroid> bonks = new ArrayList <Asteroid>();
ArrayList <Bullet> shots = new ArrayList <Bullet>();
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
    for (int b = 0; b < shots.size(); b++) {
      float d = dist((float)bonks.get(i).getX(), (float)bonks.get(i).getY(), (float)shots.get(b).getX(), (float)shots.get(b).getY());
      if (d < 15) {
        shots.remove(b);
        bonks.remove(i);
      }
    }
    float dee = dist((float)glow.getX(), (float)glow.getY(), (float)bonks.get(i).getX(), (float)bonks.get(i).getY());
    if (dee < 20) {
      System.out.println("game over :(");
    }
  }
  glow.move();
  glow.show();
  for (int i = 0; i < shots.size(); i++) {
    shots.get(i).move();
    shots.get(i).show();
  }
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
  if (key == '7')
    shots.add(new Bullet(glow));
}
