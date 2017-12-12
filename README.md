# OOPCA
CA Part 1 - Due 12th December

OOP Assignment
Brendan Foody
DT228
C16369976

Youtube: https://youtu.be/co37paK8RwI
GitHub: https://github.com/Bennyfoody/OOPCA

My Code
For my project is used a class called planets to create each of the planets.

Planet Class
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

The constructer shows what must be passed into the class for it to be used. In this example a color, two floats for position of the planet, a float for the size and also a string which would be the name of the planet.










Information Screens
I then used two class finctions to display the planets and to check if any of the planets were clicked. 

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

This clicked function would take the name of any planet clicked, this was then passed into the switch statement to open the information screen on each planet.




The background
class Bg
{
  float x =random(width);
  float y =random(-600, -100);
  float z = random(0, 10);
  float len = map(z, 0, 20, 5, 10);
  float yspeed = map(z, 0, 20, 2, 10);
  
  void fall()
  {
    y = y + yspeed;
    
    if (y > height)
    {
      y =random(-200,-100);
    }
  }
  
  void show()
  {
    float thick = map(z, 0, 20, 1, 5);
    strokeWeight(thick);
    stroke(225);
    line(x,y,x,y+len);
  }
}

This piece of code creates the stars in the background using a class called Bg. It then uses two class functions to move and display them in the draw function. I used the map function to give the lines variable lengths, thicknesses and speeds.

for(int i=0; i<b.length; i++)
    {
    b[i].fall();
    b[i].show();
    }
