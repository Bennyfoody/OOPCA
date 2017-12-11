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
  
  Neptune = new Planet(color(66, 75, 244), 800, 840 ,80, "Neptune");
  Uranus = new Planet(color(66, 170, 244), 750, 250 ,70 , "Uranus");
  Saturn = new Planet(color(244, 158, 66), 420, 450,50, "Saturn");
  Jupiter = new Planet(color(244, 146, 66), 1200, 310 ,120 ,"Jupiter");
  Mars = new Planet(color(98, 244, 66), 1150, 500 ,90 ,"Mars");
  Earth = new Planet(color(98, 244, 66), 1000 ,460 ,90 ,"Earth");
  Venus = new Planet(color(244, 203, 66), 700 , 560, 30, "Venus");
  Mercury = new Planet(color(200,0, 200), 900, 540, 30, "Mercury");
  Sun = new Planet(color(244, 200, 66), width/2,height/2,200, "Sun");
  for(int i=0; i<b.length; i++)
  {
  b[i] = new Bg();
  }
  
 strokeWeight(1);
 ellipse(width/2, height/2, 270, 270);
 ellipse(width/2, height/2, 300, 300);
 ellipse(width/2, height/2, 400, 400);
 ellipse(width/2, height/2, 410, 410);
 ellipse(width/2, height/2, 710, 710);
 ellipse(width/2, height/2, 760, 760);
 ellipse(width/2, height/2, 780, 780);
 ellipse(width/2, height/2, 840, 840);
}


void draw()
{
  background(0);
  for(int i=0; i<b.length; i++)
  {
  b[i].fall();
  b[i].show();
  }
 
 Sun.display();
 Mercury.display();
 Venus.display();
 Earth.display();
 Mars.display();
 Jupiter.display();
 Saturn.display();
 Uranus.display();
 Neptune.display();
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
    strokeWeight(2);
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