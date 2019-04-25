//variables
Player player;
boolean[] keys = new boolean[128];
PVector vel;

void setup(){
  size(800, 600);
  player = new Player(width/2, height/2);
  vel = new PVector(0, 0);
}

void draw(){
  background(0);
  movement();
  player.updatePlayer(vel);
  player.drawPlayer();
  
}

void keyPressed(){
  keys[key] = true;
}

void keyReleased(){
  keys[key] = false;
}

void movement(){
  
  if(keys['w']){
    vel.y = -1;
  } else if( keys['s']){
    vel.y = 1;
  } else {
    vel.y = 0;
  }
  if( keys['a']){
    vel.x = -1;
  } else if (keys['d']){
    vel.x = 1;
  } else { 
    vel.x = 0;
  }
  
}
