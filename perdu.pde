Boolean perdre=false;
int tps1;
void perdre() {
  if (lose==true) {
    tps1=millis();
    lose=false;
    running=false;
    
  }
  if (millis()>tps1+1000) {
    nb_bombe=10;
    menu =0;
    perd=true;
    for (int i=0; i<terrain.length; i++) {//i == y
      for (int j=0; j<terrain.length; j++) {//j=x
        terrain[i][j]=newterrain[i][j];
        perdre=false;
        temps=millis();
        
      }
    }
    nom="AAA";
    lettre1=false;
    lettre2=false;
    lettre3=false;
    lettre4=false; 
    lettre5=false;
    lettre6=false;
    cmp=0;
  }
}
