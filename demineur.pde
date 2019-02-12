int menu;
int x_terrain=1000, y_terrain=600;
PImage bombe, flag, marteau, rejouer, acceuil, play, play2, trophet;
Boolean lose=false;
void setup() {
  size(1000, 600); 
  bombe=loadImage("bombe.jpg");//ok
  marteau=loadImage("marteau.jpg");//ok
  flag=loadImage("flag.png");//ok
  //rejouer=loadImage("rejoue.png");
  acceuil=loadImage("acceuil.png");//ok
  play=loadImage("play.png");//ok
  play2=loadImage("play2.png");//ok
  trophet=loadImage("trophet.png");//ok
}

void draw() {
  switch(menu) {
  case 0 :
    trie();
    acceuil();

    break;

  case 1:

    jeu();
    if (mode==1){
        fill(255,255,255,50);
    rect(600,270,50,50);
    }else{
          fill(255,255,255,50);
    rect(600,200,50,50);
    }


    if (gagn==true) {
      gagner();
    } else {
      affiche_time();
    }

    if (perdre==true) {

      perdre();
    }



    break;
  case 2 :

    record_aff();


    break;
  case 3 :

    nom();


    break;
  }
}
