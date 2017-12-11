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