size(200,200);
smooth();
background(255);



//rect(50,50,80,30);  //x,y,width,height
//rect(50,50,80,30,10);  //x,y,width,height,r

//rectMode(CORNER);
//rect(width/2,height/2,80,30,20);  //x,y,width,height

//rectMode(CORNERS);
//rect(50,50,80,100);  //xy,xy

//rectMode(CENTER);
//rect(width/2,height/2,100,100);  ///center xy,width,height

//rectMode(RADIUS);
//rect(50,50,30,40);  //center xy,dist,dist






//  color
//  0-255 127 gray  default
//  RGB  255,0,0  red
//  #ff0000  red

//fill(0,100,127);
//rect(50,50,80,30);

//fill(0,0,255,127);
//rect(50,50,80,30);

//colorMode(RGB,100);
//fill(0,0,100);
//rect(50,50,80,100);

//colorMode(HSB);
//fill(100,100,255);  //SHIKISO,SAIDO,MEIDO
//rect(50,50,80,100);

//noFill();
//rect(50,50,80,100);

//stroke(#ff0000);
//strokeWeight(3);
//fill(127);
//rect(50,50,80,30);

//noStroke();
//fill(127);
//rect(50,50,80,30);





//stroke(#333333);
//fill(#999999);

//point(50,50);

//line(50,50,100,100);

//ellipse(50,50,80,80);  //elipseMode(CENTER)

//arc(50,50,80,80,0,PI);
//arc(50,50,80,80,0,radians(240));
//arc(50,50,80,80,0,radians(240),PIE);
//arc(50,50,80,80,0,radians(240),CHORD);





stroke(#333333);
fill(#999999);

beginShape();
vertex(100,20);
vertex(120,100);
vertex(100,80);
vertex(80,100);
endShape(CLOSE);