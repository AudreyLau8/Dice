Die bob;

void setup()
{
  size(592, 700);
  textSize(25);
  textAlign(CENTER, CENTER);
  noLoop();
}

void draw()
{
  //your code here
  background(255);
  int total = 0;
  for(int row = 0; row < 10; row++)
  {
    for(int i = 0; i < 10; i++) 
    {
      bob = new Die(60*i, 60*row);
      bob.roll();
      bob.show();
      if (bob.one == true)
      {
        total++;
      }
      else if (bob.two == true)
      {
        total = total + 2;
      }
      else if (bob.three == true)
      {
        total = total + 3;
      }
      else if (bob.four == true){
        total = total + 4;
      }
      else if (bob.five == true)
      {
        total = total + 5;
      }
      else if (bob.six == true)
      {
        total = total + 6;
      }
    }
  }
  text("Total: " + str(total), 300, 650);
}
  
void mousePressed()
{
  redraw();
}
  
class Die //models one single dice cube
{
  //member variable declarations here
  int myX, myY;
  boolean one, two, three, four, five, six;
  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;
    one = false;
    two = false;
    three = false;
    four = false;
    five = false;
    six = false;
  }
  
  void roll()
  {
    int num = (int)((Math.random()*6)+1);
    if(num == 1) {
      one = true;
    }
    else if(num == 2) {
      two = true;
    }
    else if(num == 3) {
      three = true;
    }
    else if(num == 4) {
      four = true;
    }
    else if(num == 5) {
      five = true;
    }
    else if(num == 6) {
      six = true;
    }
  }
   
  void show()
  {
    fill((int)(Math.random()*79)+176, (int)(Math.random()*79)+176, (int)(Math.random()*79)+176);
    rect(myX, myY, 50, 50, 7);
    fill(0);
    if (one == true) 
    {
      ellipse(myX+25, myY+25, 5, 5);
    }
    else if (two == true) 
    {
      ellipse(myX+15, myY+15, 5, 5);
      ellipse(myX+35, myY+35, 5, 5);
     }
     else if (three == true) 
     {
       ellipse(myX+15, myY+15, 5, 5);
       ellipse(myX+25, myY+25, 5, 5);
       ellipse(myX+35, myY+35, 5, 5);
     }
     else if (four == true) 
     {
       ellipse(myX+15, myY+15, 5, 5);
       ellipse(myX+15, myY+35, 5, 5);
       ellipse(myX+35, myY+15, 5, 5);
       ellipse(myX+35, myY+35, 5, 5);
     }
     else if (five == true) 
     {
       ellipse(myX+25, myY+25, 5, 5);
       ellipse(myX+15, myY+15, 5, 5);
       ellipse(myX+15, myY+35, 5, 5);
       ellipse(myX+35, myY+15, 5, 5);
       ellipse(myX+35, myY+35, 5, 5);
     }
     else if (six == true) 
     {
       ellipse(myX+25, myY+15, 5, 5);
       ellipse(myX+25, myY+35, 5, 5);
       ellipse(myX+15, myY+15, 5, 5);
       ellipse(myX+15, myY+35, 5, 5);
       ellipse(myX+35, myY+15, 5, 5);
       ellipse(myX+35, myY+35, 5, 5);
     }
   }
}
