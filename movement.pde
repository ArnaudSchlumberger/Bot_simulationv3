void avancer(float x, float y){
  if(arrive==false){
    orientationRobot(x,y);
    if(abs(xR-x)<1.5 && abs(yR-y)<1.5){
      arrive = true;
    }
    if(arrive == false){  
      xR=xR+sin(deg)*v;
      yR=yR-cos(deg)*v;
      collision();
    }
  }
}
void orientationRobot(float x, float y){
  float alpha = atan2(x-xR,-y+yR);
  translate(xR,yR);
  rotate(deg);
  deg =alpha;
  rotate(-deg);
  translate(-xR,-yR);
}
