class Ripple {
  color c;
  float xpos;
  float ypos;
  float speed;
  float size;
  float positionX;
  float positionY;
  float maxSize;
  //decay time
  float lifespan;

  //New ripple constructor where additionally I am passing in speed and X & Y postions.
  Ripple(float tempX, float tempY, float tempSize, color tempC, float rspeed, float tmSize, float fTime) {
    xpos = tempX;
    ypos = tempY;
    size = tempSize;
    c = tempC;
    speed=rspeed;
    maxSize = tmSize;
    positionX=xpos;
    positionY=ypos;
    lifespan = fTime;
  }
  
  
  //New ripple move without the speed 
  void move() {
    size = size + speed;
    if (this.getSize() > maxSize) {
      this.reset(positionX,positionY,speed,c);
    }
    lifespan -= 1.0;
  }
  
  float getSize() {
    return size;
  }
  
  void reset(float tx, float ty,float tsize, color tC) {
    xpos = tx;
    ypos = ty;
    c = tC;
    fill(c,c,c,100);
    size = tsize;
    ellipse(xpos,ypos, size, size);
  }

  void display() {
    stroke(2,2);
    fill(c,lifespan);
    ellipseMode(CENTER);
    ellipse(xpos,ypos, size, size);
  }
  
  
// Is the ripple still alive?
  boolean isDead() {
    return (lifespan < 0.0);
  }

}
