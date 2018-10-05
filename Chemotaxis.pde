 //declare bacteria variables here
 PImage img;
 Bacteria[] bob;
 void setup()   
 {     
 	//initialize bacteria variables here
  frameRate(60);
 	size(1000,1000);
  img = loadImage("ainsely.png");
  bob = new Bacteria[20];
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

  myX = myX + (int)(Math.random()*11)-5;
  myY = myY + (int)(Math.random()*11)-5;
 }
 void show()
 {
 	noStroke();
  image(img,myX,myY,300*uniscale,450*uniscale);
  //ellipse(myX,myY,4,4); 
 }
}