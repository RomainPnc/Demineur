String tabnom[]={"AAA", "AAA", "AAA", "AAA", "AAA"};
int tabsec[]= {99, 99, 99, 99, 99};
int tabmin[]= {99, 99, 99, 99, 99};
int mini=70;
boolean prem=false;
void record() {

  if (minute<tabmin[4] ) {
    tabmin[4]=minute; 
    tabsec[4]=seconde;
    tabnom[4]=nom;
  } else {
    if (minute==tabmin[4]) {
      if (seconde<tabsec[4]) {
        tabmin[4]=minute;
        tabsec[4]=seconde;
        tabnom[4]=nom;
      }
    }
  }
}
void trie() {
  for (int i=0; i<tabmin.length-1; i++) {
    if (tabmin[i+1]<tabmin[i]) {
      int save = tabmin[i] ;
      tabmin[i]=tabmin[i+1];
      tabmin[i+1]=save;
      int save2 = tabsec[i] ;
      tabsec[i]=tabsec[i+1];
      tabsec[i+1]=save2;
      String save3 = tabnom[i] ;
      tabnom[i]=tabnom[i+1];
      tabnom[i+1]=save3;
    }
  }
}





void record_aff() {
  background(100, 100, 100);
  image(acceuil, 660, 400, 50, 50);
  fill(255, 255, 255);
  rect(100, 100, 400, 400);
  textSize(18);
  fill(0, 0, 0);
  text("nom               temps :", 120, 150);
  text("1er "+tabnom[0]+"  - "+tabmin[0]+" minutes "+tabsec[0]+" secondes ", 150, 200);
  text("2em "+tabnom[1]+"  - "+tabmin[1]+" minutes "+tabsec[1]+" secondes ", 150, 250);
  text("3em "+tabnom[2]+"  - "+tabmin[2]+" minutes "+tabsec[2]+" secondes ", 150, 300);
  text("4em "+tabnom[3]+"  - "+tabmin[3]+" minutes "+tabsec[3]+" secondes ", 150, 350);
  text("5em "+tabnom[4]+"  - "+tabmin[4]+" minutes "+tabsec[4]+" secondes ", 150, 400);
}
