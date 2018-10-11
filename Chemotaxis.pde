Bacteria[] dots;

void setup()   
{     
  size(500, 500);
  background(color(#c4fdff));
  dots = new Bacteria[10];
  for (int i = 0; i < dots.length; i++) {
    dots[i] = new Bacteria();
  }
}

void draw()   
{    
  background(color(#c4fdff));
  bg();
  for (int i = 0; i < dots.length; i++) {
    dots[i].walk();
    dots[i].show();
  }
  hole();
}  

void mousePressed() {
  if (mouseY <= 300) {
    for (int i = 0; i < dots.length; i++) {
      dots[i] = new Bacteria();
    }
  }
}

void bg() {
  fill(247, 227, 178);
  noStroke();
  rect(0, 350, 500, 150);
}

void hole() {
  fill(66, 48, 2);
  noStroke();
  ellipse(250, 370, 45, 25);
}

class Bacteria    
{     
  int myX, myY, myColor, myFollowColor;
  Bacteria() {
    spawnAnt();
    myX += (int)(Math.random()*100)-50;
    myY += (int)(Math.random()*100)-50;
    myColor = color((int)(Math.random()*165)+90, 0, 0);
  }
  
  void walk() {
    int xStep;
    int yStep;
    if (myX < 250) {
      xStep = (int)(Math.random()*3);
    } else 
    {
      xStep = (int)(Math.random()*3 - 3);
    }
    if (myY < 370) {
      yStep = (int)(Math.random()*3);
    } else 
    {
      yStep = (int)(Math.random()*3 - 3);
    }
    myX = myX + xStep;
    myY = myY + yStep;
    //keep in screen
    if (myX < 0)
      myX = 0;
    if (myX > 500) 
      myX = 500;
    if (myY < 0) 
      myY = 0;
    if (myY > 500) 
      myY = 500;
  }
  
  void show() {
    fill(myColor);
    stroke(myColor);
    ellipse(myX+10, myY-1, 10, 10);
    ellipse(myX, myY, 10, 8);
    ellipse(myX-10, myY, 12, 9);
    line(myX-5, myY, myX-10, myY+8);
    line(myX-5, myY, myX-10, myY-8);
    line(myX, myY, myX-5, myY+8);
    line(myX, myY, myX-5, myY-8);
    line(myX+5, myY, myX, myY+8);
    line(myX+5, myY, myX, myY-8);
  }
  
  void spawnAnt() {
    myX = mouseX;
    myY = mouseY;
  }
}
