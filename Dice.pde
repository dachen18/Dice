int CarpoolTunnel = 0;
void setup()
  {
    size(600,690);
    background(255);
      noLoop();
  }
  void draw()
  {
    background(255);
    Die bob = new Die();
    bob.roll();
    bob.show();
  }
  void mousePressed()
  {
     textSize(15);
      redraw();
      CarpoolTunnel = CarpoolTunnel + 1;
  }
  class Die
  {
      int x,y,W,Num,Sum,r,On,Tw,Th,Fo,Fi,Si;
      Die() 
      {
       W = 40;
      }
      void roll()
      {
        for (r=0;r<= 195;r++)
        {
          Num = (int)(Math.random()*6+1);
      }
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
             for (r=0;r<= 195;r++)
        {
          Num = (int)(Math.random()*6+1);
      }
      //Some BIG IFS
            if (Num == 1)
            {
              ellipse(x+20,y+20,2.5,2.5);
              Sum = Sum + 1;
              On = On + 1;
            }
            if (Num == 2)
            {
              ellipse(x+8,y+8,2.5,2.5);
              ellipse(x+32,y+32,2.5,2.5);
              Sum = Sum + 2;
              Tw = Tw + 1;
            }
            if(Num == 3)
            {
              ellipse(x+8,y+8,2.5,2.5);
              ellipse(x+32,y+32,2.5,2.5);
              ellipse(x+20,y+20,2.5,2.5);
              Sum = Sum + 3;
              Th = Th + 1;
            }
               if (Num == 4)
            {
              ellipse(x+15,y+15,2.5,2.5);
              ellipse(x+25,y+15,2.5,2.5);
              ellipse(x+15,y+25,2.5,2.5);
              ellipse(x+25,y+25,2.5,2.5);
              Sum = Sum + 4;
              Fo = Fo + 1;
            }
            if (Num == 5)
            {
              ellipse(x+8,y+8,2.5,2.5);
              ellipse(x+32,y+32,2.5,2.5);
              ellipse(x+8,y+32,2.5,2.5);
              ellipse(x+32,y+8,2.5,2.5);
              Sum = Sum + 5;
              Fi = Fi + 1;
            }
            if (Num == 6)
            {
              ellipse(x+15,y+20,2.5,2.5);
              ellipse(x+25,y+20,2.5,2.5);
              ellipse(x+15,y+10,2.5,2.5);
              ellipse(x+25,y+10,2.5,2.5);
              ellipse(x+15,y+30,2.5,2.5);
              ellipse(x+25,y+30,2.5,2.5);
              Sum = Sum + 6;
              Si = Si + 1;
            }
 
 }
 
        }
 
//end of show()
//TONS AND TONS AND TONS AND TONS AND TONS AND TONS OF TEXT!
textSize(10);
fill(0);
text("Total amount: ",50,610);
text(Sum,125,610);
text("Number of times clicked: ",50,625);
text(CarpoolTunnel,175,625);
text("Average amount", 50,640);
text((Sum/196.00),135,640);
text("Fun Fact: You burn 1.42 calories per click",50,655);
text("You have burned ",50,670);
text((CarpoolTunnel*1.42),132,670);
text("calories",200,670);
text("Number of 1's:",300,605);
text(On,375,605);
text("Number of 2's",300,620);
text(Tw,375,620);
text("Number of 3's",300,635);
text(Th,375,635);
text("Number of 4's",300,650);
text(Fo,375,650);
text("Number of 5's",300,665);
text(Fi,375,665);
text("Number of 6's",300,680);
text(Si,375,680);
      }
          
  


}
