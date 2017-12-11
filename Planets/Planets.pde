//Defining Objects
Planet Earth;
Planet Kepler186f;
Planet Kepler283c;
Planet Gliese667cf;
Planet Gliese6667ce;
Planet Kepler62e;
Planet Keplar62f;
Planet Gliese581d;
Bg[] b = new Bg[500];


void setup()
{
  size(600,900);
  Earth = new Planet(color(random(0,225),random(0,225),random(0,225)),300,450,60,"Earth");
  Kepler186f = new Planet(color(random(0,225),random(0,225),random(0,225)),60,240,55,"Kepler186f");
  Kepler283c = new Planet(color(random(0,225),random(0,225),random(0,225)),410,600,100, "Kepler283c");
  Gliese667cf = new Planet(color(random(0,225),random(0,225),random(0,225)),510,500,70, "Gliese667cf");
  Gliese6667ce = new Planet(color(random(0,225),random(0,225),random(0,225)),100,500,70, "Gliese6667ce");
  Kepler62e = new Planet(color(random(0,225),random(0,225),random(0,225)),360,360,90, "Kepler62e");
  Keplar62f = new Planet(color(random(0,225),random(0,225),random(0,225)),490,300,85, "Keplar62f");
  Gliese581d = new Planet(color(random(0,225),random(0,225),random(0,225)),80,580,80, "Gliese581d");
  for(int i=0; i<b.length; i++)
  {
  b[i] = new Bg();
  }
}


void draw()
{
  background(0);
  for(int i=0; i<b.length; i++)
  {
  b[i].fall();
  b[i].show();
  }
  Earth.display();
  Kepler186f.display();
  Kepler283c.display();
  Gliese667cf.display();
  Gliese6667ce.display();
  Kepler62e.display();
  Keplar62f.display();
  Gliese581d.display();
}

void mousePressed()
{
  Earth.clicked();
  Kepler186f.clicked();
  Kepler283c.clicked();
  Gliese667cf.clicked();
  Gliese6667ce.clicked();
  Kepler62e.clicked();
  Keplar62f.clicked();
  Gliese581d.clicked();
}

//Setting up the class
class Planet
{
  color c;
  float xpos;
  float ypos;
  float size;
  String name;

  //Defining constructer
  Planet(color tempC, float tempXpos, float tempYpos, float tempSize, String tempName)
  {
    name = tempName;
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
  
  void clicked()
  {
    float d = dist(mouseX, mouseY, xpos, ypos);
    if(d < size/2)
    {
      print("Planet Clicked");
      c = 150;
    }
  }
}