int startTime = 0, stopTime=0 ;
boolean running = false;  

int minute_aff, seconde_aff;

void affiche_time() {

  stopTime=millis();
  if (temps==0) {
    seconde_aff=stopTime-stopTime;
  } else {
    seconde_aff=(stopTime-temps)/1000; 
    minute_aff=seconde_aff/60;
    seconde_aff=seconde_aff-60*minute_aff;
  }
  textSize(12);
  fill(0,0,0);
  text(minute_aff+"minutes"+seconde_aff+"seconde", 600, 100);
}
