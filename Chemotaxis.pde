//declare bacteria variables here   
Ants[] colony;

void setup() {     
  size(500, 500);  
  colony = new Ants[10];
  for(int i = 0; i < colony.length; i++) {
    colony[i] = new Ants();
  }
}   

void draw() {
  background(255);
  for(int i = 0; i < colony.length; i++) {
    colony[i].show();
  }  
}  

void mousePressed() {
  ant();
}

void ant() {
  fill(0);
  ellipse(mouseX+10, mouseY-1, 10, 10);
  ellipse(mouseX, mouseY, 10, 8);
  ellipse(mouseX-10, mouseY, 12, 9);
  line(mouseX-5, mouseY, mouseX-10, mouseY+8);
  line(mouseX-5, mouseY, mouseX-10, mouseY-8);
  line(mouseX, mouseY, mouseX-5, mouseY+8);
  line(mouseX, mouseY, mouseX-5, mouseY-8);
  line(mouseX+5, mouseY, mouseX, mouseY+8);
  line(mouseX+5, mouseY, mouseX, mouseY-8);
}
class Ants {     
	int myX, myY, myColor;
	void move() {
	}
  void show() {
  fill(0);
  stroke(0);
  ellipse(mouseX+10, mouseY-1, 10, 10);
  ellipse(mouseX, mouseY, 10, 8);
  ellipse(mouseX-10, mouseY, 12, 9);
  line(mouseX-5, mouseY, mouseX-10, mouseY+8);
  line(mouseX-5, mouseY, mouseX-10, mouseY-8);
  line(mouseX, mouseY, mouseX-5, mouseY+8);
  line(mouseX, mouseY, mouseX-5, mouseY-8);
  line(mouseX+5, mouseY, mouseX, mouseY+8);
  line(mouseX+5, mouseY, mouseX, mouseY-8);
  }  
}    