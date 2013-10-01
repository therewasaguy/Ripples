class Ripples {
  ArrayList<Ripple> ripples; //an arraylist for all the ripples  

Ripples(int num, int tempX, int tempY, color tColor, float tSpeed, float maxSize, float fTime) {
  ripples = new ArrayList<Ripple>(); //initialize the arraylist
  for (int i = 0; i < num; i++) {
    ripples.add(new Ripple(tempX, tempY, 2, tColor, tSpeed + i, maxSize, fTime));
    }
  }

void move() {
  for (int i = 0; i<ripples.size(); i++) {
    Ripple p = ripples.get(i);
    p.move();
  }
}

void display() {
  for (int i = 0; i<ripples.size(); i++) {
    Ripple p = ripples.get(i);
    p.display();
  }
}

/*void reset() {
    for (int i = 0; i<ripples.size(); i++){
    Ripple p = ripples.get(i);
    p.reset();
  }
}

  
boolean isDead() {
    for (int i = 0; i<ripples.size(); i++) {
    Ripple p = ripples.get(i);
    p.isDead();
    return x;
    }
}
*/
}
