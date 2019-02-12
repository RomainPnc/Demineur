Boolean gg=false, tempsrec=false, perd=false;
void acceuil() {
  background(100, 100, 100);

  fill(255, 255, 255);
  image(play2, x_terrain/2 - 200, y_terrain/2-50, 100, 100);
  image(trophet, x_terrain/2 + 150, y_terrain/2-50, 100, 100);

  fill(0, 0, 0);
  textSize(12);

  if (perd==true) {
    textSize(80);
    fill(0, 0, 0);
    text("perdu :(", 150, 200);
  }


  if (gg==true) {

    text(minute+"minutes"+seconde+"seconde", 100, 100);
    textSize(80);
    fill(0, 0, 0);
    text("win", 150, 200);
    /* for (int i=0; i<terrain.length; i++) {//i == y
     for (int j=0; j<terrain.length; j++) {//j=x
     
     if (terrain[i][j]==9 || terrain[i][j]==39) {
     terrain[i][j]=19;
     }
     }
     }*/
  }
}
