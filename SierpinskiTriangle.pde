int size = 200;
public void setup()
{
  size(500,500);
}
public void draw()
{
  background(0);
  sierpinski(0,0,500);
}
public void mousePressed()//optional
{
  size = size / 2;
  if(size <=  20){
    size = 800;
  }
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= size){
    triangle(x,y, x+len, y, x+len/2, y+len);
  }
  else{
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4, y+len/2, len/2);
  }
}
