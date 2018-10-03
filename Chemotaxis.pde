 //declare bacteria variables here
 Bacteria[] bob;   
 void setup()   
 {     
 	//initialize bacteria variables here
 	size(500,500);
  bob = new Bacteria[10000];
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
  int myX, myY;
 Bacteria()
 {
  myX = myY = 250;
 }
 void Walk()
 {
  
  myX = myX + (int)(Math.random()*7)-3;
  myY = myY + (int)(Math.random()*7)-3;
 }
 void show()
 {
 	noStroke();
  ellipse(myX,myY,4,4); 
 }
}