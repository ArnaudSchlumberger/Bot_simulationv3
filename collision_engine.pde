void collision(){
  for(int i = 0;i<nObstacles;i++){
  //côté gauche
    if(xR+taille/2 > res*obstacles[i][0] && xR+taille/2 <= res*obstacles[i][0]+5 && yR>res*obstacles[i][1] &&yR<res*obstacles[i][1]+res){
      xR=res*obstacles[i][0]-taille/2;
      println("Gauche");
    }
    //côté droit
    if(xR-taille/2<res*obstacles[i][0]+res && xR-taille/2 >= res*obstacles[i][0]-5 && yR>res*obstacles[i][1] &&yR<res*obstacles[i][1]+res){
      xR=res*obstacles[i][0]+taille/2+res;
      println("Droite");
    }
    //côté haut
    if(yR+taille/2>res*obstacles[i][1] && yR+taille/2 <=res*obstacles[i][1]+5 /**/ && xR>res*obstacles[i][0] && xR<res*obstacles[i][0]+res){
      yR=res*obstacles[i][1]-taille/2;
    }
    //côté bas
    if(yR-taille/2<res*obstacles[i][1]+res && yR-taille/2 >=res*obstacles[i][1]-5 /**/ && xR>res*obstacles[i][0] && xR<res*obstacles[i][0]+res){
      yR=res*obstacles[i][1]+res+taille/2;
    }
  }
}

float norm2(float* vect)
{
  float norm;
  norm = sqrt( vect[0]*vect[0] + vect[1]*vect[1]);
  return norm;
}

float norminf(float* vect)
{
  flaot norm;
  norm = max(vect[0],vect[1]);
  return norm;
}

int coll()
{
  float bot[2];
  bot[0] = xR;
  bot[1] = yR;
  int yes = 0;
  float rect[2];
  float d[2];
  float h[2];
  float k;
  for(int i =0;i<nObstacles;i++)
  {
    rect[0] = res*obstacles[i][0] + res/2;
    rect[1] = res*obstacles[i][1] +res/2;
    d[0] = bot[0] - rect[0];
    d[1] = bot[1] - rect[1];
    k = (norm2(d) - taille/2)/(norm2(d);
    h[0] = d[0] * k;
    h[1] = d[1] *k;
    if(norminf(h) <= res/2)
    {yes = 1;}
    
  }
  return yes;
}

