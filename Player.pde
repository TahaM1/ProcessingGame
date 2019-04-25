public class Player {

  //variables
    PVector pos, speed; 
    float speedMultipler;
    PImage spriteSheet;
    PImage[][] sprites;
    int direction; 
    boolean moving; 
    int frameCounter;
    int framesPerAnimation; 
    int animationSpeed; 
    Animation walking;
    
    public Player(float x, float y){
      //setting values
      this.pos = new PVector(x, y);
      this.speed = new PVector(0, 0);
      this.spriteSheet = loadImage("player.png");
      speedMultipler = 0.9;
      direction = 0;
      sprites = new PImage[4][3];
      framesPerAnimation = 3;
      animationSpeed = 8;
      
      Sprite walkingSprite = new Sprite("player.png", 4, 3);
      walkingSprite.cutOutsprites2DArray(7, 4, 19, 29, 17, 25);
      walking = new Animation(walkingSprite, 3, 8);
      
    }
    
    public void drawPlayer(){
      walking.runAnimation(speed, pos);
      
       //for(int i = 0; i < 3; i++){
       //  image(sprites[2][i], pos.x + i * 20, pos.y);
       //}
       
     }
   
    
    public void updatePlayer(PVector vel){
      
      speed.set(vel.x * speedMultipler, vel.y * speedMultipler);
      
      pos.add(speed); 
     
    }
      
    
    
    
    



}
