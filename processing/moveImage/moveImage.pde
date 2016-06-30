float x,y;
float speed;
int w;
PImage[] img;
int picNum = 4;

void setup(){
  size(500,500);
  smooth();
  noStroke();
  frameRate(50);
  
  x = 0.0;
  y = height/2.0;
  speed = 2.0;
  w = 10;
  img = new PImage[picNum];
  
}

void draw(){
  background(204);
  x += speed;
  if (x > width){
    x = -w;
    y = random(width -  w);
  }
  
  for( int i = 1; i <= img.length; i++){
    img[i-1] =loadImage(i+".jpg");
  }
  
  translate(x,y);
  image(img[0],50,50,200,200);
}