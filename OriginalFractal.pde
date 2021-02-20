public void setup()
{
 size(600,600);
}
public void draw()
{
background(8);
sierpinski(300,300,500);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{

  ellipse(x, y, len,len); 
  if(len >10 && len%2==0)
  {
    fill(0,200,0);
    sierpinski(x-(len/4),y,2*len/4);
    sierpinski(x+(len/4),y,2*len/4);
    sierpinski(x,y-(len/2),len/4);
    sierpinski(x,y+(len/2),len/4);
  }
  else if(len >10 &&len%1==0)
  {
     fill(0,0,200);
    sierpinski(x-(len/4),y,2*len/4);
    sierpinski(x+(len/4),y,2*len/4);
    sierpinski(x,y-(len/2),len/4);
    sierpinski(x,y+(len/2),len/4); 
  }

}
