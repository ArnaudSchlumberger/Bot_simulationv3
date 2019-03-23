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
