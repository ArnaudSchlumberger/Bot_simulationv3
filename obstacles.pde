void placementObstacles(){
  int Xcurs = mouseX;
  int Ycurs = mouseY;
  fill(255,0,0);
  rect(res*(Xcurs/res),res*(Ycurs/res),res,res);
  
  obstacles[nObstacles][0]=(Xcurs/res);
  
  obstacles[nObstacles][1]=(Ycurs/res);
  nObstacles ++;
}
void drawObstacles(){
  if(nObstacles>0){
    for(int i = 0;i<=nObstacles;i++){
      fill(255,0,0);
      rect(res*obstacles[i][0],res*obstacles[i][1],res,res);
    }
  }
}

void setupObstacles(){
  for(int i = 0;i<100;i++){
    obstacles[i][0]=-res;
    obstacles[i][1]=-res;
  }
}
