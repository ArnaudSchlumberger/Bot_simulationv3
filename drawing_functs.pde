void quadrillage(int reso){
  stroke(175);
  for(int x = 0;x<=width;x=x+reso){
    line(x,0,x,height);
    for(int y = 0;y<=height;y=y+reso){
      line(0,y,width,y);
    }
  }
}

void drawRobot(){
  translate(xR,yR);
  rotate(deg);
  fill(0,50,240);
  stroke(0,0,255);
  circle(0,0,taille);
  fill(255,255,0);
  stroke(255,255,0);
  triangle(0,-taille/2,-taille/3,taille/3,taille/3,taille/3);
  rotate(-deg);
  translate(-xR,-yR);
  //debug
  stroke(255,0,255);
  line(xR-taille/2,yR,xR+taille/2,yR);
}

void drawDestination(){
  stroke(255,0,0);
  line(xDesti,0,xDesti,height);
  line(0,yDesti,width,yDesti);
}
