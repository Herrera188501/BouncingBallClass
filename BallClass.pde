/** Copy and Paste the code here 
  * If your code contains more than one class, 
  * be sure to paste the second class at the end 
  */



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

