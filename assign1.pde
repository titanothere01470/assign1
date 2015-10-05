/* please implement your assign1 code in this file. */
PImage shipImg;
PImage background;
PImage hp;
PImage enemy;
PImage treasure;
int x;
int y;
int w;
int z;
int s;

void setup () {
  size(640,480) ;  // must use this size.
  x =0;
  y =floor(random(0,400));
  w =x+floor(random(0,600));
  z =x+floor(random(0,200));
  s =floor(random(0,450));
  shipImg =loadImage("img/fighter.png");
  background =loadImage("img/bg1.png");
  hp =loadImage("img/hp.png");
  enemy =loadImage("img/enemy.png");
  treasure =loadImage("img/treasure.png");
}

void draw() {
  //background
  image (background,0,0);
  
  // blood
  stroke(255,0,0);
  fill(255,0,0);
  rect(10,13,z,25);
  
  // material image 
  image (shipImg,580,240);
  image (hp,5,10);
  image (treasure,w,s);
  image (enemy,x,y);
  x +=2;
  x %=640;
  
  
}
