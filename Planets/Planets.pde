//Importing Librarys
import processing.sound.*;
SoundFile file;

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

int cx, cy;
float secondsRadius;
float minutesRadius;
float hoursRadius;
float clockDiameter;

void setup()
{
  size(1600,900);
  //Clock setup
  int radius = min(width, height) / 8;
  secondsRadius = radius * 0.72;
  minutesRadius = radius * 0.60;
  hoursRadius = radius * 0.50;
  clockDiameter = radius * 1.8;
  
  cx = width / 8;
  cy = height / 8 + 50;
  
  //Audio setup
  file = new SoundFile(this, "Audio/audio2.mp3");
  file.play();
  file.amp(0.025);
  
  //Loading images
  sun = loadImage("Sun.jpeg");
  mercury = loadImage("Mercury.jpg");
  venus = loadImage("Venus.jpg");
  earth = loadImage("Earth.jpg");
  mars = loadImage("Mars.jpg");
  jupiter = loadImage("Jupiter.jpg");
  saturn = loadImage("Saturn.jpg");
  uranus = loadImage("Uranus.jpg");
  neptune = loadImage("Neptune.jpg");
  
  //Creating the planets
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
    //Creating background stars
    background(0);
    for(int i=0; i<b.length; i++)
    {
    b[i].fall();
    b[i].show();
    }
   
  //Drawing clock
  fill(237, 111, 2);
  noStroke();
  ellipse(cx, cy, clockDiameter, clockDiameter);
  float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
  float m = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI) - HALF_PI; 
  float h = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2) - HALF_PI;
  
  // Drawing the hands of the clock
  stroke(28, 221, 202);
  strokeWeight(1);
  line(cx, cy, cx + cos(s) * secondsRadius, cy + sin(s) * secondsRadius);
  strokeWeight(2);
  line(cx, cy, cx + cos(m) * minutesRadius, cy + sin(m) * minutesRadius);
  strokeWeight(4);
  line(cx, cy, cx + cos(h) * hoursRadius, cy + sin(h) * hoursRadius);
  
  // Draw the minute hand
  strokeWeight(2);
  beginShape(POINTS);
  for (int a = 0; a < 360; a+=6) 
  {
    float angle = radians(a);
    float x = cx + cos(angle) * secondsRadius;
    float y = cy + sin(angle) * secondsRadius;
    vertex(x, y);
  }
  endShape();
  
  //Drawing the concentric circles
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
   
   //Displaying the planets
   noStroke();
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
    String e ="Structure: 91.0% Hydrogen, 8.9% Helium"; 
    text(e, 960, 570, 500, 25);  
    String t ="Moons: None, instead it has planets"; 
    text(t, 960, 595, 500, 25);
    String y ="Rings: None"; 
    text(y, 960, 620, 500, 25); 
    
    
    if (keyPressed == true)
    {
     stage = 1;
    }
  }
  
  if(stage == 3)
  {
    background(255);
    image(mercury, 0, 0);
    fill(0);
    rect(900, 0, 700, 900);
    noFill();
    rect(950, 50, 600, 800);
    textSize(40);
    fill(0, 102, 153);
    text("Mercury: The Swiftest Planet", 960, 100); 
    String s ="Mercury's eccentric orbit takes the small planet as close as 47 million km (29 million miles) and as far as 70 million km (43 million miles) from the sun. If one could stand on the scorching surface of Mercury when it is at its closest point to the sun, the sun would appear more than three times as large as it does when viewed from Earth.";
    textSize(20);
    fill(200);
    text(s, 960, 120, 500, 300);  
    String q ="Radius: 1,550 miles"; 
    text(q, 960, 520, 500, 25);
    String r ="Distance from Earth: 48 million miles"; 
    text(r, 960, 545, 500, 25);  
    String e ="Structure: 75.0% Iron-Nickle, 25% Unknown"; 
    text(e, 960, 570, 500, 25);  
    String t ="Moons: None"; 
    text(t, 960, 595, 500, 25);
    String y ="Rings: None"; 
    text(y, 960, 620, 500, 25); 
    if (keyPressed == true)
    {
     stage = 1;
    }
  }
  
  if(stage == 4)
  {
    background(255);
    image(venus, 0, 0);
    fill(0);
    rect(900, 0, 700, 900);
    noFill();
    rect(950, 50, 600, 800);
    textSize(40);
    fill(0, 102, 153);
    text("Venus: Planetary Hot Spot", 960, 100); 
    String s = "Venus is the second planet from the sun and our closest planetary neighbor. Similar in structure and size to Earth, Venus spins slowly in the opposite direction most planets do. Its thick atmosphere traps heat in a runaway greenhouse effect, making it the hottest planet in our solar system with surface temperatures hot enough to melt lead. Glimpses below the clouds reveal volcanoes and deformed mountains.";  
    textSize(20);
    fill(200);
    text(s, 960, 120, 500, 300);  
    String q ="Radius: 3,760 miles"; 
    text(q, 960, 520, 500, 25);
    String r ="Distance from Earth: 25 million miles"; 
    text(r, 960, 545, 500, 25);  
    String e ="Structure: Iron-Core, rock crust"; 
    text(e, 960, 570, 500, 25);  
    String t ="Moons: None"; 
    text(t, 960, 595, 500, 25);
    String y ="Rings: None"; 
    text(y, 960, 620, 500, 25); 
    
    if (keyPressed == true)
    {
     stage = 1;
    }
  }
  
  if(stage == 5)
  {
    background(255);
    image(earth, -100, -100);
    fill(0);
    rect(900, 0, 700, 900);
    noFill();
    rect(950, 50, 600, 800);
    textSize(40);
    fill(0, 102, 153);
    text("Earth: Home Planet", 960, 100); 
    String s ="Earth is the third planet from the sun and the fifth largest in the solar system. Just slightly larger than nearby Venus, Earth is the biggest of the terrestrial planets. Our home planet is the only planet in our solar system known to harbor living things.";
    textSize(20);
    fill(200);
    text(s, 960, 120, 500, 300);  
    String q ="Radius: 3,959 miles miles"; 
    text(q, 960, 520, 500, 25);
    String r ="Distance from Sun: 93 million miles"; 
    text(r, 960, 545, 500, 25);  
    String e ="Structure: Iron-Nickle, molten rock, 70% Ocean Coverage"; 
    text(e, 960, 570, 500, 25);  
    String t ="Moons: One"; 
    text(t, 960, 595, 500, 25);
    String y ="Rings: None"; 
    text(y, 960, 620, 500, 25); 
    
    if (keyPressed == true)
    {
     stage = 1;
    }
  }
  
  if(stage == 6)
  {
    background(255);
    image(mars, 0, 0);
    fill(0);
    rect(900, 0, 700, 900);
    noFill();
    rect(950, 50, 600, 800);
    textSize(40);
    fill(0, 102, 153);
    text("Mars: The Red Planet", 960, 100); 
    String s = "Mars is a cold desert world. It is half the diameter of Earth and has the same amount of dry land. Like Earth, Mars has seasons, polar ice caps, volcanoes, canyons and weather, but its atmosphere is too thin for liquid water to exist for long on the surface. There are signs of ancient floods on Mars, but evidence for water now exists mainly in icy soil and thin clouds.";
    textSize(20);
    fill(200);
    text(s, 960, 120, 500, 300);  
    String q ="Radius: 2,106 miles"; 
    text(q, 960, 520, 500, 25);
    String r ="Distance from Earth: 34.13 million miles"; 
    text(r, 960, 545, 500, 25);  
    String e ="Structure: Iron and Nickle, 16% Sulpher"; 
    text(e, 960, 570, 500, 25);  
    String t ="Moons: 2 Phobos, Deimos "; 
    text(t, 960, 595, 500, 25);
    String y ="Rings: None"; 
    text(y, 960, 620, 500, 25); 
    
    if (keyPressed == true)
    {
     stage = 1;
    }
  }
  
  if(stage == 7)
  {
    background(255);
    image(jupiter, 0, 0);
    fill(0);
    rect(900, 0, 700, 900);
    noFill();
    rect(950, 50, 600, 800);
    textSize(40);
    fill(0, 102, 153);
    text("Jupiter: King of the Planets", 960, 100); 
    String s = "Jupiter is the fifth planet from our sun and the largest planet in the solar system. Jupiter's stripes and swirls are cold, windy clouds of ammonia and water. The atmosphere is mostly hydrogen and helium, and its iconic Great Red Spot is a giant storm bigger than Earth that has raged for hundreds of years. ";
    textSize(20);
    fill(200);
    text(s, 960, 120, 500, 300);  
    String q ="Radius: 43,440.7 miles"; 
    text(q, 960, 520, 500, 25);
    String r ="Distance from Earth: 93 million miles"; 
    text(r, 960, 545, 500, 25);  
    String e ="Structure: 75.0% Hydrogen, 25.0% Helium"; 
    text(e, 960, 570, 500, 25);  
    String t ="Moons: 53 confirmed"; 
    text(t, 960, 595, 500, 25);
    String y ="Rings: 3 Gasious Rings"; 
    text(y, 960, 620, 500, 25); 
    
    if (keyPressed == true)
    {
     stage = 1;
    }
  }
  
  if(stage == 8)
  {
    background(255);
    image(saturn, 0, 0);
    fill(0);
    rect(900, 0, 700, 900);
    noFill();
    rect(950, 50, 600, 800);
    textSize(35);
    fill(0, 102, 153);
    text("Saturn: Jewel of Our Solar System", 960, 100); 
    String s = "Saturn, the sixth planet from the sun, is home to a vast array of intriguing and unique worlds. From the cloud-shrouded surface of Titan to crater-riddled Phoebe, each of Saturn's moons tells another piece of the story surrounding the Saturn system.";
    textSize(20);
    fill(200);
    text(s, 960, 120, 500, 300);  
    String q ="Radius: 36,184 miles"; 
    text(q, 960, 520, 500, 25);
    String r ="Distance from Earth: 746 million miles"; 
    text(r, 960, 545, 500, 25);  
    String e ="Structure: Mainly Hydrogen and Hydrogen"; 
    text(e, 960, 570, 500, 25);  
    String t ="Moons: 53 Confirmed"; 
    text(t, 960, 595, 500, 25);
    String y ="Rings: 7 Main Rings"; 
    text(y, 960, 620, 500, 25); 
    
    if (keyPressed == true)
    {
     stage = 1;
    }
  }
  
  if(stage == 9)
  {
    background(255);
    image(uranus, -200, 0);
    fill(0);
    rect(900, 0, 700, 900);
    noFill();
    rect(950, 50, 600, 800);
    textSize(40);
    fill(0, 102, 153);
    text("Uranus: The Sideways Planet", 960, 100); 
    String s ="The seventh planet from the sun with the third largest diameter in our solar system, Uranus is very cold and windy. The ice giant is surrounded by 13 faint rings and 27 small moons as it rotates at a nearly 90-degree angle from the plane of its orbit. This unique tilt makes Uranus appear to spin on its side, orbiting the sun like a rolling ball.";
    textSize(20);
    fill(200);
    text(s, 960, 120, 500, 300);  
    String q ="Radius: 15,759 miles"; 
    text(q, 960, 520, 500, 25);
    String r ="Distance from Earth: 93 million miles"; 
    text(r, 960, 545, 500, 25);  
    String e ="Structure: 80.0% Water, Methane, Ammonia, 20.0% Rocky Core "; 
    text(e, 960, 570, 500, 25);  
    String t ="Moons: 13"; 
    text(t, 960, 595, 500, 25);
    String y ="Rings: 27"; 
    text(y, 960, 620, 500, 25); 
    if (keyPressed == true)
    {
     stage = 1;
    }
  }
  if(stage == 10)
  {
    background(255);
    image(neptune, 0, 0);
    fill(0);
    rect(900, 0, 700, 900);
    noFill();
    rect(950, 50, 600, 800);
    textSize(40);
    fill(0, 102, 153);
    text("Neptune: The Windiest Planet", 960, 100); 
    String s = "Dark, cold and whipped by supersonic winds, Neptune is the last of the hydrogen and helium gas giants in our solar system. More than 30 times as far from the sun as Earth, the planet takes almost 165 Earth years to orbit our sun. In 2011 Neptune completed its first orbit since its discovery in 1846.";
    textSize(20);
    fill(200);
    text(s, 960, 120, 500, 300);  
    String q ="Radius: 20,764 miles"; 
    text(q, 960, 520, 500, 25);
    String r ="Distance from Earth: 2.795 billion miles"; 
    text(r, 960, 545, 500, 25);  
    String e ="Structure: Hydrogen, Helium and Methane"; 
    text(e, 960, 570, 500, 25);  
    String t ="Moons: 14"; 
    text(t, 960, 595, 500, 25);
    String y ="Rings: Six"; 
    text(y, 960, 620, 500, 25); 
    
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
    stage = 6;  // Mars
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