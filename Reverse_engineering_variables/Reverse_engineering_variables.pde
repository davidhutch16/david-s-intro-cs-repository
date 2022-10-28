int n = 100;
int f = 75;
int x = 100;
float k = 0.0;
boolean flag=true;
void setup() { 
  size(1000,1000);
}

void draw() { 
  background(0);
  fill(237, 31, 17,100);
  circle(width/2, height/2, 300);
  fill(255);
  square(0,0,n);
  n = n -1;
  fill(66, 135, 245);
  triangle(0,0,f,50,0,100);
  f = f+1;
  
  square(550,x,30);
  if(flag) 
  x= x+2;
 

 
}  
