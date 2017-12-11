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
Bg[] b = new Bg[250];
int stage = 1;

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
  sun = loadImage("Sun.jpeg");
  
  Neptune = new Planet(color(18, 95, 117), 800, 840 ,80, "Neptune");
  Uranus = new Planet(color(49, 186, 224), 750, 250 ,70 , "Uranus");
  Saturn = new Planet(color(204, 113, 34), 420, 450,50, "Saturn");
  Jupiter = new Planet(color(119, 60, 8), 1200, 310 ,120 ,"Jupiter");
  Mars = new Planet(color(224, 82, 31), 1150, 500 ,90 ,"Mars");
  Earth = new Planet(color(45, 173, 31), 1000 ,460 ,90 ,"Earth");
  Venus = new Planet(color(178, 119, 1), 700 , 560, 30, "Venus");
  Mercury = new Planet(color(66, 60, 63), 900, 540, 30, "Mercury");
  Sun = new Planet(color(255, 183, 30), width/2,height/2,200, "Sun");
  for(int i=0; i<b.length; i++)
  {
  b[i] = new Bg();
  }
}


void draw()
{
  if(stage == 1)
  {
    background(0);
    for(int i=0; i<b.length; i++)
    {
    b[i].fall();
    b[i].show();
    }
   noFill();
   strokeWeight(1);
   ellipse(width/2, height/2, 270, 270);
   ellipse(width/2, height/2, 300, 300);
   ellipse(width/2, height/2, 400, 400);
   ellipse(width/2, height/2, 410, 410);
   ellipse(width/2, height/2, 710, 710);
   ellipse(width/2, height/2, 760, 760);
   ellipse(width/2, height/2, 780, 780);
   ellipse(width/2, height/2, 840, 840);
   
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
  
  if(stage == 2)
  {
    //noLoop();
    print("Sun Page");
    background(255);
    image(sun, 0, 0);
    fill(0);
    rect(900, 0, 700, 900);
    noFill();
    rect(950, 50, 600, 800);
    textSize(40);
    fill(0, 102, 153);
    text("Our Sun", 1150, 100); 
    String s ="The sun at the heart of our solar system is a yellow dwarf star, a hot ball of glowing gases. Its gravity holds the solar system together, keeping everything from the biggest planets to the smallest particles of debris in its orbit. Electric currents in the sun generate a magnetic field that is carried out through the solar system by the solar wind — a stream of electrically charged gas blowing outward from the sun in all directions.";
    textSize(20);
    fill(200);
    text(s, 960, 120, 500, 300);  
    String q ="Radius: 432,168.6 miles"; 
    text(q, 960, 520, 500, 25);
    String r ="Distance from Earth: 93 million miles"; 
    text(r, 960, 545, 500, 25);  
    
    
    if (keyPressed == true)
    {
     stage = 1;
    }
  }
  
  if(stage == 3)
  {
    //noLoop();
    print("Mercury Page");
    background(255);
    
    if (keyPressed == true)
    {
     stage = 1;
    }
  }
  
  if(stage == 4)
  {
    //noLoop();
    print("Venus Page");
    background(255);
    
    if (keyPressed == true)
    {
     stage = 1;
    }
  }
  
  if(stage == 5)
  {
    //noLoop();
    print("Earth Page");
    background(255);
    
    if (keyPressed == true)
    {
     stage = 1;
    }
  }
  
  if(stage == 6)
  {
    //noLoop();
    print("Mars Page");
    background(255);
    
    if (keyPressed == true)
    {
     stage = 1;
    }
  }
  
  if(stage == 7)
  {
    //noLoop();
    print("Jupiter Page");
    background(255);
    
    if (keyPressed == true)
    {
     stage = 1;
    }
  }
  
  if(stage == 8)
  {
    //noLoop();
    print("Saturn Page");
    background(255);
    
    if (keyPressed == true)
    {
     stage = 1;
    }
  }
  
  if(stage == 9)
  {
    //noLoop();
    print("Uranus Page");
    background(255);
    
    if (keyPressed == true)
    {
     stage = 1;
    }
  }
  if(stage == 10)
  {
    //noLoop();
    print("Neptune Page");
    background(255);
    
    if (keyPressed == true)
    {
     stage = 1;
    }
  }
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
      switch(name) 
      {
    
  case "Sun": 
    stage = 2;  // Moves to Sun page
    break;
  case "Mercury": 
    stage = 3;  // Moves to Murcury page
    break;
    case "Venus": 
    stage = 4;  // Venus
    break;
    case "Earth": 
    stage = 5;  // Earth
    break;
    case "Mars": 
    stage = 6;  // PMars
    break;
    case "Jupiter": 
    stage = 7;  // Jupiter
    break;
    case "Saturn": 
    stage = 8;  // Saturn
    break;
    case "Uranus": 
    stage = 9;  // Uranus
    break;
    case "Neptune": 
    stage = 10;  // Neptune
    break;
  default:        // Default executes if the case labels
    stage = 1;   // don't match the switch parameter
    break;
}
    }
  }
}