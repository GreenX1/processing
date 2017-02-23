import ddf.minim.*;
Minim minim;
AudioSample sound;

int x = 300;
int speed = 2;
int y = 300;
int speed2 = 1;


void setup(){
size(600,600);
minim = new Minim (this);
sound = minim.loadSample("ding.wav", 128);
}
void draw(){
background(0,y,x);
ellipse(x,y,100,100);
fill(255,255,255);
stroke(255,255,255);
x = x + speed;
if(x == 550){
  speed = -2;
  sound.trigger();
}
if(x == 50){
  speed = 2;
  sound.trigger();
}
y = y + speed2;
if(y == 550){
  speed2 = -1;
  sound.trigger();
}
if(y == 50){
  speed2 = 1;
  sound.trigger();
}

rect(mouseX,590,150,5);
println(y);
}
boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
return true;
else 
return false;
}

