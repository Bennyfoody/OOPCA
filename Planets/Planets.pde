//Defining Objects
Planet Earth;
Planet Kepler186f;
Planet Kepler283c;
Planet Gliese667cf;
Planet Gliese6667ce;
Planet Kepler62e;
Planet Keplar62f;
Planet Gliese581d;

void setup()
{
  size(600,900);
  Earth = new Planet(color(random(0,225),random(0,225),random(0,225)),300,450,60);
  Kepler186f = new Planet(color(random(0,225),random(0,225),random(0,225)),60,240,55);
  Kepler283c = new Planet(color(random(0,225),random(0,225),random(0,225)),410,600,100);
  Gliese667cf = new Planet(color(random(0,225),random(0,225),random(0,225)),510,500,70);
  Gliese6667ce = new Planet(color(random(0,225),random(0,225),random(0,225)),100,500,70);
  Kepler62e = new Planet(color(random(0,225),random(0,225),random(0,225)),360,360,90);
  Keplar62f = new Planet(color(random(0,225),random(0,225),random(0,225)),490,300,85);
  Gliese581d = new Planet(color(random(0,225),random(0,225),random(0,225)),80,580,80);
}

void draw()
{
  background(40);
  Earth.display();
  Kepler186f.display();
  Kepler283c.display();
  Gliese667cf.display();
  Gliese6667ce.display();
  Kepler62e.display();
  Keplar62f.display();
  Gliese581d.display();
}

//Setting up the class
class Planet
{
  color c;
  float xpos;
  float ypos;
  float size;



  //Defining constructer
  Planet(color tempC, float tempXpos, float tempYpos, float tempSize)
  {
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    size = tempSize;
  }

  void display()
  {
    stroke(0);
    fill(c);
    ellipse(xpos, ypos, size, size);
  }

}