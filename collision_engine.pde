float norm2(float vect[])
{
  float norm;
  norm = sqrt( vect[0]*vect[0] + vect[1]*vect[1]);
  return norm;
}

float norminf(float vect[])
{
  float norm;
  norm = max(abs(vect[0]),abs(vect[1]));
  return norm;
}

int coll()
{
  float[] bot= new float[2];
  bot[0] = xR;
  bot[1] = yR;
  int yes = 0;
  float[] recta = new float[2];
  float[] d= new float[2];
  float[] h= new float[2];
  float k;
  for(int i =0;i<nObstacles;i++)
  {
    recta[0] = res*obstacles[i][0] + res/2;
    recta[1] = res*obstacles[i][1] +res/2;
    d[0] = bot[0] - recta[0];
    d[1] = bot[1] - recta[1];
    k = (norm2(d) - taille/2)/(norm2(d));
    h[0] = d[0] * k;
    h[1] = d[1] *k;
    if(norminf(h) <= res/2)
    {yes = 1;}

  }
  return yes;
}
