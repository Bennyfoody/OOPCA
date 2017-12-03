import processing.video.*;

Capture video;void setup() 
{  
  size(1800,900,P2D);  
  video = new Capture(this, 320, 240); 
  video.start();
}

void captureEvent(Capture video) 
{  
  video.read();
}

void draw() 
{  
  background(255);  
  //tint(100,100,100);  
  //video.filter(GRAY);
  //video.filter(POSTERIZE, 50);
  //video.filter(BLUR);
  translate(width/2, height/2);  
  imageMode(CENTER);  
  //rotate(PI/4);  
  image(video, 0, 0, width/2, height/2);
}
/*
void draw()
{
  background(40);
  myPlanet.display();
  myPlanet.move();
}

  void move()
  {
     xpos = xpos + size;
      if (xpos > width) 
      {
        xpos = 0;
      }
  }
  
    void display()
  {
    stroke(0);
    fill(c);
    //rectMode(CENTER);
    rect(xpos,ypos,20,height);
  }


  */