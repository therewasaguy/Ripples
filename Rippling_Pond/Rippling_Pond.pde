/*Jason's to-do Notes:
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

ArrayList<Ripple> manyRipples;
float decayTime = 1000;

void setup() {
 size(640,480); 

 manyRipples = new ArrayList<Ripple>();
 manyRipples.add(new Ripple(width/2,height/2,2,color(random(0,255)),2,width/2, 500));
}

void draw() {
//  ripples.display(); 
background(0,100,100);
for(int i=manyRipples.size()-1;i>=0;i--){
    Ripple tempRipple = manyRipples.get(i);
    tempRipple.move();
    tempRipple.display();
    if (tempRipple.isDead()) {
        manyRipples.remove(i);
        background(0,100,100);
    }
  }
}

void mousePressed() {
  float maxSize = random(width/5, width);
  float tSpeed = map(maxSize, width/5, width, 2, 7.2);
  manyRipples.add(new Ripple(mouseX,mouseY,2,color(random(0,255)),tSpeed,maxSize, decayTime)); 
}
