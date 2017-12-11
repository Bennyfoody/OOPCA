class Bg
{
  float x =random(width);
  float y =random(-600, -100);
  float z = random(0, 20);
  float len = map(z, 0, 20, 10, 20);
  float yspeed = map(z, 0, 20, 5, 15);
  
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
    stroke(0,0,225);
    line(x,y,x,y+len);
  }
  
  
}