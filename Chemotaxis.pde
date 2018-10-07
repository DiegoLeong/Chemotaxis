 //declare bacteria variables here
 PImage ainsley;
 PImage meat;
 PImage basil;
 PImage pepper;
 PImage kitchen;
 Ainsley[] bob;
 
 void setup()   
 {     
 	//initialize bacteria variables here
  frameRate(120);
 	size(1000,600);
  ainsley = loadImage("ainsely.png");
  meat = loadImage("meat.png");
  basil = loadImage("basil.png");
  pepper = loadImage("pepper.png");
  kitchen = loadImage("kitchen.jpg");
  bob = new Ainsley[7];
  for(int i=0; i < bob.length; i++)
  {
    bob[i]=new Ainsley();
  }
 } 
 
 void draw()   
 {//move and show the bacteria   
 	background(225);
 image(meat,mouseX-64,mouseY-64);
  for(int i=0; i < bob.length; i++){
  bob[i].show();
  bob[i].Walk();
  
  }   
 }  
 
class Ainsley
{
  //conversionX and conversionY could be useful
  float uniscale = 0.5;
  int myX, myY;
 Ainsley()
 {
  myX = 500;
  myY = 300;
  
 }
 void Walk()
 {
  //to make him move more than he follows the mouse maybe 
  //call walk a couple times more and then put the mouseX/Y thing in a different function to be called once only
  myX = myX + (int)(Math.random()*9)-4;
  myY = myY + (int)(Math.random()*9)-4;

  //moves ainsley around
  if(myX>mouseX)
  {
    myX = myX - 1;
  }
  
  if(myY>mouseY)
  {
    myY = myY - 1;
  }
  
  if(myX<mouseX)
  {
    myX = myX + 1;
  }
  
  if(myY<mouseY)
  {
    myY = myY + 1;
  }
 }
 void show()
 {
  float centerX = myX - 150*uniscale;
  float centerY = myY - 225*uniscale;
 	noStroke();
  image(ainsley,centerX,centerY,300*uniscale,450*uniscale);
  image(basil,myX+10,myY+25,100,100);
  image(pepper,myX-150,myY,150,150);
  //ellipse(myX,myY,4,4);
 }


}
