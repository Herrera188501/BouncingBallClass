/** Copy and Paste the code here 
  * If your code contains more than one class, 
  * be sure to paste the second class at the end 
  */


// Global variables
int x = 0;
int y = 0;
int diameter = 200;

int xd = 5;
int yd = 5;

int x2 = 0;
int y2 = 0;
int diameter2 = 200;
int yd2 = 7;
int xd2 = 7;




//setup methods
public void setup()
{
  background(180);
  size(800,800);
  x = (int) (Math.random()*width);
  y = (int)(Math.random()*height);
  ellipse(x,y, diameter, diameter);
  
  x2 = (int) (Math.random()*width);
  y2 = (int)(Math.random()*height);
  
  ellipse(x2,y2, diameter2, diameter2);
}

//draw method
public void draw()
{
  background(180);
  ellipse(x,y, diameter, diameter);
  ellipse(x2,y2, diameter2, diameter2);
  x += xd;
  y += yd;
  x2 += xd2;
  y2 += yd2;
  
  
  if(x > 800 || x < 0)
  {
    xd = xd * -1;
  }
  if(y > 800 || y < 0)
  {
    yd = yd * -1;
  }
  if(x2 > 800 || x2 < 0)
  {
    xd2 = xd2 * -1;
  }
  if(y2 > 800 || y2 < 0)
  {
    yd2 = yd2 * -1;
  }

  if( collision(x, y, x2 ,y2) < (diameter/2 + diameter/2) )
  {
    xd = -1*xd;
    xd2 = -1*xd2;
    //yd = -1*yd;
    //yd2 = -1*yd2;
    diameter -= 5;
    diameter2 -= 5;
  }



}





public int collision(int x1, int y1, int x2, int y2)
{
  return (int) (Math.sqrt( (x2-x1)*(x2-x1) + (y2-y1)*(y2-y1) ) );


}



// Global Variables
Ball b1;
Ball b2;
Ball b3;

// Setup method
public void setup()
{
  size (800,800);
  background(120);
  b1 = new Ball();
  b2 = new Ball();
  b3 = new Ball();
}


// draw method
public void draw()
{
  background(120);
  b1.update();
  b1.drawBall();
  b1.checkEdges();
  
  b2.update();
  b2.drawBall();
  b2.checkEdges();
  
  b3.update();
  b3.drawBall();
  b3.checkEdges();
  
  
}

