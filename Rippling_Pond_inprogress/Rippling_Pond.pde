/*Jason's Notes:
I'll do the main ripple, maybe meet up on Friday, 3-4

fade time - defined in main ripple
collisions - defined in main ripple

ripple object
inherit to make different types of ripples

animals
- speed, x, y, color
- methods: collision, 
- reacts to ripples
- sub: frogs, watergliders, each with a PImage
*/

ArrayList<Ripples> manyRipples;
float decayTime = 1000;

void setup() {
 size(640,480); 

 manyRipples = new ArrayList<Ripples>();
 manyRipples.add(new Ripples(5, width/2,height/2,color(random(0,255)),2,width/2, 500));
//(int num, int tempX, int tempY, color tColor, float tSpeed, float maxSize, float fTime)
}

void draw() {
//  ripples.display(); 
background(0,100,100);
for(int i=manyRipples.size()-1;i>=0;i--){
    Ripples tempRipple = manyRipples.get(i);
    tempRipple.move();
    tempRipple.display();
    for (int r=tempRipple.size()-1; i>=0;i--){
      ripple tr = tempRipple.get(r);
      if (tr.isDead()) {
        tempRipple.remove(i);
        background(0,100,100);
      }
    }
  }
}

void mousePressed() {
  float maxSize = random(width/5, width);
  float tSpeed = map(maxSize, width/5, width, 2, 7.2);
  color tColor = color(random(0,255));
  manyRipples.add(new Ripples(5,mouseX,mouseY,tColor,tSpeed,maxSize, decayTime)); 
}
