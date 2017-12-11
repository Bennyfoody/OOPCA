class Bg
{
  float x =random(width);
  float y =random(-200, -100);
  float yspeed = random(5, 12);
  float len = random(10, 20);
  
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
    stroke(10);
    stroke(0,0,225);
    line(x,y,x,y+len);
  }
  
  
}