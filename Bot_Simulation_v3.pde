int res = 50;
int[][] obstacles = new int[100][2];
float deg;
//variables robot
float xR,yR; //position
int v=3; //norme vitesse
int taille = 50; //diametre cercle
int nObstacles = 0;
float xDesti,yDesti;

boolean arrive = true;

void setup(){
  size(800,600);
  background(0);
  fill(255,0,0);
  circle(0,0,10);
  frameRate(30);
  //noSmooth();
  setupObstacles();
  xR = width/2;
  yR = height/2;
}

void draw(){
  background(0);
  quadrillage(res);
  drawRobot();
  drawObstacles();
  drawDestination();
  avancer(xDesti,yDesti);
}
