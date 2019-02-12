int seconde=70;
int minute=70;
void gagner() {
  nb_bombe=10;
  menu=0;
  gg=true;
  tempsrec=true;
  prem=true;
  seconde = (stopTime-temps)/1000;
  minute= seconde/60;
  seconde=seconde -60*minute;
  textSize(12);


  if (tempsrec==true) {
    record();
    tempsrec=false;
  }
  for (int i=0; i<terrain.length; i++) {//i == y
    for (int j=0; j<terrain.length; j++) {//j=x
      terrain[i][j]=newterrain[i][j];
      gagn=false;
      temps=millis();
      //record();
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
