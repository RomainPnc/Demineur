int terrain[][] =  {{  9, 20, 20, 9, 20, 20, 20}, 
  {20, 20, 20, 20, 9, 20, 20}, 
  {20, 9, 20, 9, 20, 20, 20}, 
  {20, 20, 20, 20, 20, 20, 20}, 
  {20, 9, 20, 20, 20, 9, 20}, 
  {20, 9, 20, 20, 20, 20, 20}, 
  {20, 20, 9, 20, 9, 20, 20}};


int newterrain[][] =  {{  9, 20, 20, 9, 20, 20, 20}, 
  {20, 20, 20, 20, 9, 20, 20}, 
  {20, 9, 20, 9, 20, 20, 20}, 
  {20, 20, 20, 20, 20, 20, 20}, 
  {20, 9, 20, 20, 20, 9, 20}, 
  {20, 9, 20, 20, 20, 20, 20}, 
  {20, 20, 9, 20, 9, 20, 20}};
float taille_case=500.0000/terrain.length;
boolean detect=false, gagn=false;

int nb_bombe=10;

void jeu() {

  background(128, 128, 128);

  pushMatrix();
  line(50, 550, 550, 550);
  line(550, 50, 550, 550);
  image(flag, 600, 200, 50, 50);
  textSize(10);
  text("x"+nb_bombe, 650, 250);
  image(marteau, 600, 270, 50, 50);

  int gagner=0;
  for (int i=0; i<terrain.length; i++) {
    for (int j=0; j<terrain.length; j++) {

      line(i*taille_case+50, 50, i*taille_case+50, 550);
      line(50, j*taille_case+50, 550, j*taille_case+50);
      /*if (terrain[i][j]==9) {
       fill(0, 0, 0);
       text("BOUM", j*taille_case+50, i*taille_case+taille_case+50);
       }*/
      if (terrain[i][j]==19) {
        image(bombe, j*taille_case+55, i*taille_case+55, taille_case-10, taille_case-10);
      }
      /////////////////////////////////initialiser le nb de bombe a proximiter//////////////
      if (terrain[i][j]==20 ) {
        int compteur=0;
        if ( i!= 0 && j!=0 && (terrain[i-1][j-1]==9 || terrain[i-1][j-1]==39) ) {
          compteur=compteur+1;
        }
        if (  i!=0 && (terrain[i-1][j]==9 || terrain[i-1][j]==39)) {
          compteur=compteur+1;
        }
        if ( i!= 0 && j!=terrain.length-1 && (terrain[i-1][j+1]==9 || terrain[i-1][j+1]==39) ) {
          compteur=compteur+1;
        }
        if (  j!=0 &&( terrain[i][j-1]==9 || terrain[i][j-1]==39) ) {
          compteur=compteur+1;
        }
        if (  j!=terrain.length-1 && (terrain[i][j+1]==9 || terrain[i][j+1]==39) ) {
          compteur=compteur+1;
        }
        if ( i!= terrain.length-1 && j!=0 && (terrain[i+1][j-1]==9 || terrain[i+1][j-1]==39) ) {
          compteur=compteur+1;
        }
        if (  i!=terrain.length-1 && (terrain[i+1][j]==9 || terrain[i+1][j]==39) ) {
          compteur=compteur+1;
        }
        if ( i!= terrain.length-1 && j!=terrain.length-1 && (terrain[i+1][j+1]==9  || terrain[i+1][j+1]==39)) {
          compteur=compteur+1;
        }
        terrain[i][j]=compteur;
      }


      if (terrain[i][j]==10 || terrain[i][j]==11 ||terrain[i][j]==12 || terrain[i][j]==13 || terrain[i][j]==14 || terrain[i][j]==15 ||terrain[i][j]==16 || terrain[i][j]==17 || terrain[i][j]==18) {
        fill(47, 79, 79);
        rect(j*taille_case+50, i*taille_case+50, taille_case, taille_case);
      }
      /////affiche nb de bombe proxi
      fill(0, 0, 0);
      textSize(30);
      if (terrain[i][j]==11) {
        fill(0, 0, 0);
        text("1", j*taille_case+50, i*taille_case+taille_case+50);
      }
      if (terrain[i][j]==12) {
        fill(0, 0, 0);
        text("2", j*taille_case+50, i*taille_case+taille_case+50);
      }
      if (terrain[i][j]==13) {
        fill(0, 0, 0);
        text("3", j*taille_case+50, i*taille_case+taille_case+50);
      }
      if (terrain[i][j]==14) {
        fill(0, 0, 0);
        text("4", j*taille_case+50, i*taille_case+taille_case+50);
      }
      if (terrain[i][j]==15) {
        fill(0, 0, 0);
        text("5", j*taille_case+50, i*taille_case+taille_case+50);
      }
      if (terrain[i][j]==16) {
        fill(0, 0, 0);
        text("6", j*taille_case+50, i*taille_case+taille_case+50);
      }
      if (terrain[i][j]==17) {
        fill(0, 0, 0);
        text("7", j*taille_case+50, i*taille_case+taille_case+50);
      }
      if (terrain[i][j]==18) {
        fill(0, 0, 0);
        text("8", j*taille_case+50, i*taille_case+taille_case+50);
      }

      if (terrain[i][j]>=30) {
        image(flag, j*taille_case+(3*taille_case)/4+5, i*taille_case+(3*taille_case)/4+5, taille_case-10, taille_case-10);
      }

      if (terrain[i][j] <9) {
        gagner=gagner+1;
      }
    }//fin for
  }//fin for
  if (gagner==0) {
    gagn=true;
  }

  popMatrix();
}
