public void setup()
{
	size(800, 800);
	background(250, 235, 215);
}
int chooseColor = 0;
public void draw()
{
	noStroke();
	if(chooseColor%2 == 0)
	{
		fill(255, 182, 193, 100);
	}
	else
	{
		fill(255);
	}
	sierpinski(0, height, width);
}
public void mouseClicked()//optional
{
	chooseColor++;
}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 20)
	{
		triangle(x, y, x+len/2, y-len, x+len, y);
	}
	else
	{
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y-len/2, len/2);
	}
}