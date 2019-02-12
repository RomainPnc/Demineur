int mode=1;
int temps;
void mousePressed() {

  //////////////////mode flag ou marteau////////////
  //image(play,650,355,40,40);
  if ((mouseX>650 && mouseX<690 && mouseY>355 && mouseY<395 && menu==3) ) {//acceuill
    menu=1;
    gg=false;
    perd=false;
    temps=0;
  }


  if (mouseX>600 && mouseX<650 && mouseY>200 && mouseY<250 && menu==1) {//falg
    mode=2;

  }
  if (mouseX>600 && mouseX<650 && mouseY>270 && mouseY<320 && menu==1) {//marteau
    mode=1;
   
  }
  if (mouseX>660 && mouseX<700 && mouseY>400 && mouseY<450 && menu==2) {//acceuill
    menu=0;
  
  }

  //////////////////////////////////jeu click/////////////////////////////////////////////////////
 
  for (int i=0; i<terrain.length; i++) {//i == y
    for (int j=0; j<terrain.length; j++) {//j=x
      if (mouseX>j*taille_case+50 && mouseX<j*taille_case+taille_case+50 && mouseY>i*taille_case+50 && mouseY<i*taille_case+taille_case+50 && menu==1 && running==false) {//lance le timmer
        temps=millis();
        running=true;
        println("test");
      }

      ///bombe affiche une bombe
      if (mode==1) {
        if (mouseX>j*taille_case+50 && mouseX<j*taille_case+taille_case+50 && mouseY>i*taille_case+50 && mouseY<i*taille_case+taille_case+50 && menu==1 && terrain[i][j]==9) {
          terrain[i][j]=19;
          lose=true;
          perdre=true;
        }  
        /////pour des case valider
        if (mouseX>j*taille_case+50 && mouseX<j*taille_case+taille_case+50 && mouseY>i*taille_case+50 && mouseY<i*taille_case+taille_case+50 && menu==1 && terrain[i][j]<9 && terrain[i][j]!=10) {
          terrain[i][j]=terrain[i][j]+10;
          if (terrain[i][j]==10) {
            if (i<6 && terrain[i+1][j]<9 ) { 
              terrain[i+1][j]=terrain[i+1][j]+10;
            }
            if (i>0 && terrain[i-1][j]<9) {
              terrain[i-1][j]=terrain[i-1][j]+10;
            }
            if (j<6 && terrain[i][j+1]<9) {
              terrain[i][j+1]=terrain[i][j+1]+10;
            }
            if (j>0 && terrain[i][j-1]<9) {
              terrain[i][j-1]=terrain[i][j-1]+10;
            }

            if (i<6 && j<6 && terrain[i+1][j+1]<9 ) { 
              terrain[i+1][j+1]=terrain[i+1][j+1]+10;
            }
            if (i>0 && j>0 && terrain[i-1][j-1]<9) {
              terrain[i-1][j-1]=terrain[i-1][j-1]+10;
            }
            if (j<6 && i>0 && terrain[i-1][j+1]<9) {
              terrain[i-1][j+1]=terrain[i-1][j+1]+10;
            }
            if (j>0 && i<6 && terrain[i+1][j-1]<9) {
              terrain[i+1][j-1]=terrain[i+1][j-1]+10;
            }
          }
        }
      }

      //////quand pose drapeau
      if (mode==2) {
        if (mouseX>j*taille_case+50 && mouseX<j*taille_case+taille_case+50 && mouseY>i*taille_case+50 && mouseY<i*taille_case+taille_case+50 && menu==1 && terrain[i][j]>=30) {
          terrain[i][j]=terrain[i][j]-30;
          nb_bombe=nb_bombe+1;
        } else {
          if (mouseX>j*taille_case+50 && mouseX<j*taille_case+taille_case+50 && mouseY>i*taille_case+50 && mouseY<i*taille_case+taille_case+50 && menu==1 && terrain[i][j]<10 && nb_bombe!=0) {
            terrain[i][j]=terrain[i][j]+30;
            nb_bombe=nb_bombe-1;
          }
        }
      }
    }///fin for
  }//fin double for
  // popMatrix();




  ///////sortir de l'acceuil////////////////
  if (mouseX>x_terrain/2-200 && mouseX<x_terrain/2-100 && mouseY>y_terrain/2-50 && mouseY<y_terrain/2+50 && menu==0) {

    menu=3;
  }
  if (mouseX>x_terrain/2+150 && mouseX<x_terrain/2+250 && mouseY>y_terrain/2-50 && mouseY<y_terrain/2+50 && menu==0) {
    menu=2;
  }
}
