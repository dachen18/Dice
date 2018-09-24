  void setup()
  {
    size(600,600);
      noLoop();
  }
  void draw()
  {
    background(255);
    Die Bob = new Die();
    Bob.show();
  }
  void mousePressed()
  {
      redraw();
  }
  class Die
  {
      int x,y,W,Number;
      Die()
      {
        W = 40;
      }
      void roll()
      {
        
      }
      void show()
      {
        for (float x = 20; x <=550; x+=40)
        {
          for(float y = 20; y <=550; y+=40)
          {
            strokeWeight(5);
            fill(255);
            stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
            rect(x,y,W,W);
             for (Number = ((int)(Math.random()*6)+1);Number <=6;Number++)
      { 
       ellipse((x+20),(y+20),2.5,2.5);
      }
          }
      }
  }
}