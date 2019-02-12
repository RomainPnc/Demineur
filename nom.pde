Boolean lettre1=false, lettre2=false, lettre3=false, lettre4=false, lettre5=false, lettre6=false, valide=false;
char t1, t2, t3, t4, t5, t6, ttest;
String nom="AAA";
int cmp=0, decal=0;

void keyPressed() {
  if (menu==3) {
    cmp+=1;
  }
}
void nom() {
  fill(200, 200, 200);
  rect(200, 200, 600, 200);
  fill(255, 255, 255);
  rect(250, 250, 500, 100);
  fill(0, 0, 0);
  textSize(18);
  text("VOTRE NOM", 210, 220);



  if (nom == "AAA") {
    if (lettre1==false ) {  
      
      t1=key;

        if (cmp==1) {
          
          lettre1=true;
          if(t1==ENTER){
            nom="AAA";
          }else{
          nom=t1+"AA";
          }
        }
      
    }
  }

  if (lettre2==false && lettre1==true) {   
    t2=key;
    if (t2==ENTER) {
      lettre1=true;
      lettre2=true;
      lettre3=true;
      lettre4=true;
      lettre5=true;
      lettre6=true;
      valide=true;
    } else {
      if (cmp==2) {
        lettre2=true;
        nom=t1+""+t2+"A";
      }
    }
  }
  if (lettre3==false && lettre1==true && lettre2==true) {   
    t3=key;
    if (t3==ENTER) {
      lettre1=true;
      lettre2=true;
      lettre3=true;
      lettre4=true;
      lettre5=true;
      lettre6=true;
      valide=true;
    } else {
      if (cmp==3) {
        lettre3=true;
        nom=t1+""+t2+""+t3;
      }
    }
  }
  if (lettre4==false && lettre1==true && lettre2==true && lettre3==true) {   
    t4=key;
    if (t4==ENTER) {
      lettre1=true;
      lettre2=true;
      lettre3=true;
      lettre4=true;
      lettre5=true;
      lettre6=true;
      valide=true;
    } else {
      if (cmp==4) {
        lettre4=true;
        nom=t1+""+t2+""+t3+""+t4;
      }
    }
  }
  if (lettre5==false && lettre1==true && lettre2==true && lettre3==true && lettre4==true) {   
    t5=key;
    if (t5==ENTER) {
      lettre1=true;
      lettre2=true;
      lettre3=true;
      lettre4=true;
      lettre5=true;
      lettre6=true;
      valide=true;
    } else {
      if (cmp==5) {
        lettre5=true;
        nom=t1+""+t2+""+t3+""+t4+""+t5;
      }
    }
  }

  if (lettre6==false && lettre1==true && lettre2==true && lettre3==true && lettre4==true && lettre5==true) {   
    t6=key;
    if (t6==ENTER) {
      lettre1=true;
      lettre2=true;
      lettre3=true;
      lettre4=true;
      lettre5=true;
      lettre6=true;
      valide=true;
    } else {
      if (cmp==6) {
        lettre6=true;
        nom=t1+""+t2+""+t3+""+t4+""+t5+""+t6;
      }
    }
  }


if(valide==true){
  key='b';
    gg=false;
    perd=false; 
    valide=false;
    t1='A';
    t2='A';
    t3='A';
    t4='A';
    t5='A';
    t6='A';
     menu=1;
  lettre1=false;
   lettre2=false;
   lettre3=false;
   lettre4=false;
   lettre5=false;
   lettre6=false;
   cmp=0;
   temps=0;
   println("///////////////////////");
}

  textSize(60);

  text(nom, 270, 325);
  image(play, 650, 355, 40, 40);
}
