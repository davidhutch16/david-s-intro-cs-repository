//int r = 0;
int x = 0;
//int dx = 0;
//int f = 0;
int n = 217;
int w = 220;
int v = 225;
int dn = 1;
//int f = (247, 229, 109;
void setup() { 
  size(800,800);
  background(100,175,125);
}

void draw() { 
  translate(100,75);
  scale(1.25);
  //background(208,72,200);
  //translate(400,400);
  // rotate(radians(r));
  // r = r + ;
  //circle(200, 0, 50);
  //circle(0,200,50);
  //circle(-200,0,50);
  //circle(0,-200,50);

fill(#CD7F32);//brown
rect(260,350,20,10);//brown part of tail
fill(#CD7F32);//brown
rect(270,340,10,20);//brown part of tail

fill(#FFFF00);//yellow
rect(270,325,40,15); //yellow part of tail

fill(#FFFF00);//yellow
rect(285,300,25,40);//yellow part of tail
rect(285,275,80,40);//yellow part of tail

fill(#FFFF00);//yellow
rect(175,310,90, 100);//torso

fill(#FFFF00);//yellow
ellipse(185,195,19,110);//ear
fill(0);//black
ellipse(185,165,19,50);//black tip of ear
fill(#FFFF00);//yellow
ellipse(185,180,15,40);//layered over a bit of the black part to make it more of a point. 

fill(#FFFF00);//yellow
ellipse(290,235,110,19);//ear
fill(0);//black
ellipse(320,235,50,18);//black tip of ear
fill(#FFFF00);//yellow
ellipse(305,235,40,15);//layered over a bit of the black part to make it more of a point.

fill(#FFFF00); //yellow
circle(220,270,107);//head


fill(0); //black
circle(195,255, 20); //eye
fill (255); //white
circle(196,252,8);//shine in the eye


fill(0); //black
circle(247, 255, 20); //eye
fill (255); //white
circle(246,252,8); //shine in the eye

if (x < 100) {
 // if (dx == 80)
 
fill(#EE4B2B);//red
x = x+10;
} else {
  fill(255, 226, 3);// yellow
  x = x-1;
}
// f = f - 5;
circle(185, 290, 21);//cheek

if (x < 100) {
 // if (dx == 80)
 
fill(#EE4B2B);//red
x = x+10;
} else {
  fill(255, 226, 3);// yellow
  x = x-1; 
}
 circle(255, 290, 21);//cheek
 

fill(5);//black
triangle(n, 280, w, 283, v ,280);//nose
if (n == 217) {
n = n + dn;
}
    if (n == 221); {
  dn = -dn;

}
if (w == 220); {
  w = w + dn;

}
if (v == 225); {
  v = v + dn;
  
  if (n == 219); {
  dn = -dn;
}
if (w == 224); {
  dn = -dn;
}
if (v == 229) {
  dn = -dn;
}
}
{
fill(#CD7F32);//brown part of tail
rect(260,350,20,10);// brown part of tail

fill(#FFFF00);
ellipse(193,380,55,70);//leg
ellipse(247,380,55,70);//leg

stroke(100,175,125);//background color  
fill(100,175,125);//background color
ellipse(220,412,55,10);//by placing this green ellipse at the bottom of pikachu it makes the effect of his legs looking baggy like they are in games or tv shows.

stroke(94,58,19);
line(220,293,231,297);//smile
line(209,297,220,293);//smile
line(207,293,209,297);//smile
line(233,293,231,297);//smile

noStroke();
fill(#FFFF00);
triangle(244,412,250,420,256,412);//toe
triangle(257,410,263,420,267,410);//toe
triangle(252,410,256,420,265,410);//toe

fill(#FFFF00);
triangle(187,412,192,420,197,412);//toe
triangle(175,410,180,420,185,410);//toe
triangle(180,410,186,420,190,410);//toe


fill(#FFEA00);
ellipse(245,345,25,60);//arm
ellipse(195,345,25,60);//arm

fill(#FFEA00);
triangle(189,372,194,380,199,374);//finger
triangle(195,374,200,380,202,372);//finger
triangle(186,368,188,380,197,374);//finger

fill(#FFEA00);
triangle(239,372,244,381,249,374);//finger
triangle(245,374,250,381,252,370);//finger
triangle(236,368,238,380,247,374);//finger
}
 
}
