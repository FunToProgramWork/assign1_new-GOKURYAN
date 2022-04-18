PImage bgImag;
PImage soilImag;
PImage lifeImag;
PImage groundhogImag;
PImage robotImag;
PImage soldierImag;
int x = 0;
int lightPos = 240;

void setup() {
  size(600,480,P2D);
  bgImag = loadImage("img/bg.jpg");
  soilImag = loadImage("img/soil.png");
  lifeImag = loadImage("img/life.png");
  groundhogImag = loadImage("img/groundhog.png");
  robotImag = loadImage("img/robot.png");
  soldierImag = loadImage("img/soldier.png");
}

void draw() {
  
  image(bgImag, 0, 0);
  strokeWeight(15.0);
  strokeCap(SQUARE);
  stroke(124,204,25);
    line(0, 152, 800, 152);
  image(soilImag,0,160);
  image(lifeImag,10,10);
  image(lifeImag,80,10);
  image(lifeImag,150,10);
  image(groundhogImag,250,80);
  image(robotImag,240,240);
  image(soldierImag,x,160);
  
  strokeWeight(10.0);
    strokeCap(ROUND);
    stroke(255,0,0);
    line(lightPos -40, 240+37, lightPos, 240+37);
       lightPos = lightPos-2;
     if(lightPos<-500){
       lightPos = 240+30;
     }
     x=x+2  ;
    if(x>640){
     x = -80;
  }
    stroke(255,255,0);
    fill(253,184,19);
    circle(520, 30, 160);
}
