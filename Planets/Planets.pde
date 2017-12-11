//Defining Objects
Planet Earth;
Planet Jupiter;
Planet Venus;
Planet Saturn;
Planet Uranus;
Planet Neptune;
Planet Sun;
Planet Mercury;
Planet Mars;
Bg[] b = new Bg[500];

  PImage earth;
  PImage jupiter;
  PImage venus;
  PImage saturn;
  PImage uranus;
  PImage mercury;
  PImage neptune;
  PImage mars;
  PImage sun;

void setup()
{
  size(1600,900);
  neptune = loadImage("Images/Neptune.jpg");
  uranus = loadImage("Images/Uranus.jpg");
  jupiter = loadImage("Images/Jupiter.jpg");
  saturn = loadImage("Images/Saturn.jpg");
  mars = loadImage("Images/Mars.jpg");
  earth = loadImage("Images/Earth.jpg");
  venus = loadImage("Images/Venus.jpg");
  mercury = loadImage("Images/Mercury.jpg");
  sun = loadImage("Images/Sun.jpeg");
  
  Neptune = new Planet(color(66, 75, 244),width/2,height/2+380,80, "Neptune");
  Uranus = new Planet(color(66, 170, 244),width/2,height/2+350,70, "Uranus");
  Saturn = new Planet(color(244, 158, 66),width/2,height/2+320,50, "Saturn");
  Jupiter = new Planet(color(244, 146, 66),width/2,height/2+270,120,"Jupiter");
  Mars = new Planet(color(98, 244, 66),width/2,height/2+200,90,"Mars");
  Earth = new Planet(color(98, 244, 66),width/2,height/2+200,90,"Earth");
  Venus = new Planet(color(244, 203, 66),width/2,height/2+160,30, "Venus");
  Mercury = new Planet(color(200,0, 200),width/2,height/2+120 ,30, "Mercury");
  Sun = new Planet(color(244, 200, 66),width/2,height/2,200, "Sun");
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
  Neptune.display();
  Uranus.display();
  Saturn.display();
  Jupiter.display();
  Mars.display();
  Earth.display();
  Venus.display();
  Mercury.display();
  Sun.display();
}

void mousePressed()
{
  Neptune.clicked();
  Uranus.clicked();
  Saturn.clicked();
  Jupiter.clicked();
  Earth.clicked();
  Mars.clicked();
  Venus.clicked();
  Mercury.clicked();
  Sun.clicked();
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
      print(name);
      c = color(random(0,225),random(0,225),random(0,225));
    }
  }
}