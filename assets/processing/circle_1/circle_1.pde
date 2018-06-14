float angle = 0;
void setup(){
  size(640, 640);
  rectMode(CENTER);
  smooth();
  frameRate(30);
}

void draw(){
  background(246);  //118-d
  
  for(int n = 0; n < 12; n += 2){
    strokeWeight(2);
    stroke(201, 202, 190);  //118-c
    line(width/2+200*cos(n*PI/12), height/2+200*sin(n*PI/12), 
         width/2-200*cos(n*PI/12), height/2-200*sin(n*PI/12));
  }
  for(int n = 0; n < 12; n += 2){
    noStroke();
    if(n == 0)
      fill(160,  30,  36);  //111-d
    else 
      fill( 61,  49,  31);  //118-b
    ellipse(width/2+200*cos(n*PI/12)*cos(angle+n*PI/12), 
           height/2+200*sin(n*PI/12)*cos(angle+n*PI/12), 20, 20);
  }
  
  angle += PI/60;
}
