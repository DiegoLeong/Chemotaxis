 //declare bacteria variables here
 PImage img;
 Bacteria[] bob;
 void setup()   
 {     
 	//initialize bacteria variables here
  frameRate(240);
 	size(1000,1000);
  img = loadImage("ainsely.png");
  bob = new Bacteria[10];
  for(int i=0; i < bob.length; i++)
  {
    bob[i]=new Bacteria();
  }
 }   
 void draw()   
 {    //move and show the bacteria   
 	background(0);
  for(int i=0; i < bob.length; i++){
  bob[i].show();
  bob[i].Walk();
  
  }   
 }  
class Bacteria
{
  //conversionX and conversionY could be useful
  float uniscale = 0.5;
  int myX, myY;
 Bacteria()
 {
  myX = myY = 500;
 }
 void Walk()
 {
  //to make him move more than he follows the mouse maybe 
  //call walk a couple times more and then put the mouseX/Y thing in a different function to be called once only
  myX = myX + (int)(Math.random()*5)-2;
  myY = myY + (int)(Math.random()*5)-2;

  //moves ainsley around
  if(myX>mouseX)
  {
    myX = myX - 10;
  }
  
  if(myY>mouseY)
  {
    myY = myY - 10;
  }
  
  if(myX<mouseX)
  {
    myX = myX + 10;
  }
  
  if(myY<mouseY)
  {
    myY = myY + 10;
  }
 }
 void show()
 {
  float centerX = myX - 150*uniscale;
  float centerY = myY - 225*uniscale;
 	noStroke();
  image(img,centerX,centerY,300*uniscale,450*uniscale);
  //ellipse(myX,myY,4,4); 
 }

}
