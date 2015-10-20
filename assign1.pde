PImage shipImg;
PImage background1;
PImage background2;
PImage hp;
PImage enemy;
PImage treasure;
int x;
int y;
int tx;
int ty;
int z;
int ex;


void setup () {
  size(640,480) ;  // must use this size.
  x =0;
  ex =0;
  y =floor(random(0,400));
  tx =x+floor(random(0,600));
  z =x+floor(random(0,200));
  ty =floor(random(0,450));
  shipImg =loadImage("img/fighter.png");
  background1 =loadImage("img/bg1.png");
  background2 =loadImage("img/bg2.png");
  hp =loadImage("img/hp.png");
  enemy =loadImage("img/enemy.png");
  treasure =loadImage("img/treasure.png");
}

void draw() {
  //background
  image (background1,x,0);
  image (background2,x-640,0);
  image (background1,x-1280,0);
  x ++;
  x%=1280;
 
 
  // blood
  stroke(255,0,0);
  fill(255,0,0);
  rect(10,13,z,25);
  
  // material image 
  image (shipImg,580,240);
  image (hp,5,10);
  image (treasure,tx,ty);
  image (enemy,ex,y);
  ex +=2;
  ex %=640;
  
  
}
