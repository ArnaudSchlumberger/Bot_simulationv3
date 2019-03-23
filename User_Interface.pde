void keyPressed(){
  if(key=='p'){
    xR=mouseX;
    yR=mouseY;
  }
  if(key=='r'){
    orientationRobot(mouseX,mouseY);
  }
  if(key==ENTER){
    arrive = false;
    xDesti = mouseX;
    yDesti = mouseY;
  }
  if(key=='o'){
    placementObstacles();
  }
  if(key=='t'){
    println("t");
  }
}
