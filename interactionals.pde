int count=0;
int frameTime = 0;
boolean circleLeft = false;
boolean circleUp = false;
boolean circleLeft2 = false;
boolean circleUp2 = false;
boolean circleLeft3 = false;
boolean circleUp3 = false;
boolean WPressed = false;
boolean APressed = false;
boolean SPressed = false;
boolean DPressed = false;
int ex = int(random(width));
int ey = int (random(height));
int px = (40);
int py = (40);
int ex2 = int(random(width));
int ey2 = int (random(height));
int ex3 = int(random(width));
int ey3 = int (random(height));
int ex4 = int(random(width));
int ey4 = int (random(height));
int red = (int (random(1,255)));
int green = (int (random(1,255)));
int blue = (int (random(1,255)));
void setup () {
size (400, 400);
 ex = int(random(width));
 ey = int (random(height));
 px = (40);
 py = (40);
 ex2 = int(random(width));
 ey2 = int (random(height));
 ex3 = int(random(width));
 ey3 = int (random(height));
 ex4 = int(random(width));
 ey4 = int (random(height));
 //for (int i = 30; i>25; i){
 //  frameRate(i);
 //}
}
  void keyPressed () {
    if (key == 'd' || key == 'D') {
       DPressed=true;
    }
   
  else if   (key == 'w' || key == 'W') {
      WPressed=true;;
    }  
    else if (key == 's' || key == 'S') {
      SPressed=true;
    } 
    else if (key == 'a' || key == 'A') {
      APressed=true;
    }
  }
   void keyReleased () {
    if (key == 'd' || key == 'D') {
       DPressed=false;
    }
   
  else if   (key == 'w' || key == 'W') {
      WPressed=false;;
    }  
    else if (key == 's' || key == 'S') {
      SPressed=false;
    } 
    else if (key == 'a' || key == 'A') {
      APressed=false;
    }
   }
void draw() {
  frameRate(50+frameTime);
  if(frameCount %150 == 0){
    frameTime+=5;
  }
  if ( circleLeft==false){
    ex2++;
    if(ex2 == 400){
      circleLeft = true;
    }
  }
    if ( circleLeft==true){
      
    ex2--;
    if(ex2 == 0){
      circleLeft = false;
    }
  }
    if ( circleUp==false){
    ey2++;
    if(ey2 == 400){
      circleUp = true;
    }
  }
    if ( circleUp==true){
      
    ey2--;
    if(ey2 == 0){
      circleUp = false;
    }
  }
   if ( circleLeft2==false){
    ex3++;
    if(ex3 == 400){
      circleLeft2 = true;
    }
  }
    if ( circleLeft2==true){
      
    ex3--;
    if(ex3 == 0){
      circleLeft2 = false;
    }
  }
    if ( circleUp2==false){
    ey3++;
    if(ey3 == 400){
      circleUp2 = true;
    }
  }
    if ( circleUp2==true){
      
    ey3--;
    if(ey3 == 0){
      circleUp2 = false;
    }
  }
    if ( circleLeft3==false){
    ex4++;
    if(ex4== 400){
      circleLeft3 = true;
    }
  }
    if ( circleLeft3==true){
      
    ex4--;
    if(ex4 == 0){
      circleLeft3 = false;
    }
  }
    if ( circleUp3==false){
    ey4++;
    if(ey4 == 400){
      circleUp3 = true;
    }
  }
    if ( circleUp3==true){
      
    ey4--;
    if(ey4 == 0){
      circleUp3 = false;
    }
  }
  fill(255);
  if (WPressed){
  py--;
  }
  if (APressed){
  px--;
  }
  if (SPressed){
  py++;
  }
  if (DPressed){
  px++;
  }
    background (red, green, blue);
 ellipse (ex, ey, 5, 5); 
   rect(px-20,py-20,40,40);
    fill(255,0,0);
    ellipse (ex2, ey2, 5, 5); 
   ellipse (ex3, ey3, 5, 5); 
    ellipse (ex4, ey4, 5, 5); 
  if (((px-ex)*(px-ex))+((py-ey)*(py-ey))<=(20*20)){
   ex = int (random(width));
   ey = int (random(height));
  }
  if (((px-ex2)*(px-ex2))+((py-ey2)*(py-ey2))<=(20*20)){
  exit();
  }
   if (((px-ex3)*(px-ex3))+((py-ey3)*(py-ey3))<=(20*20)){
  exit();
  }
   if (((px-ex4)*(px-ex4))+((py-ey4)*(py-ey4))<=(20*20)){
  exit();
  }
  if (frameCount % 30==0){
    print(count++);
  }
}
