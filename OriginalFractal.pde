public void setup()
{
 size(600,600);
}
public void draw()
{
background(8);
sierpinski(300,300,600);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
 fill((int)(Math.random()*56),(int)(Math.random()*256),(int)(Math.random()*256));
  ellipse(x, y, len,len); 
  if(len >10 && len%2==0)
  {
    
    sierpinski(x-(len/4),y,len/2);
    sierpinski(x+(len/4),y,len/2);
    sierpinski(x,y-(len/4),len/2);
    sierpinski(x,y+(len/4),len/2);
  }


}
