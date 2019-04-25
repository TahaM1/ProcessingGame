public class Animation{
  
  //storing sprites
  Sprite[] spriteAnimationArray;
  PImage[][] spriteAnimation;
  
  //keeps track of how fast the animation plays
  int framesPerAnimation;
  int animationSpeed;
  int frameCounter; 
  
  //determine which sprites will be displayed
  Boolean moving;
  int direction;
  
  Animation(Sprite spriteName, int framesPerAnimation, int animationSpeed){
    this.spriteAnimation = spriteName.sprites2DArray;
    spriteAnimationArray = null;
    frameCounter = 0;
    moving = false;
    this.framesPerAnimation = framesPerAnimation;
    this.animationSpeed = animationSpeed;
  }
 
  Animation(Sprite[] spriteAnimation){
    this.spriteAnimationArray = spriteAnimation;
    spriteAnimation = null;
  }
  
  void runAnimation(PVector vel, PVector pos){
    if(spriteAnimation != null){
      
      frameCounter++;
      moving = true;
      
      if(vel.x == 0 && vel.y == 0){
        moving = false;
      } else if (vel.x < 0){ //moving left
        direction = 1;
      } else if (vel.x > 0){ //moving right
        direction = 3;
      } else if (vel.y < 0){ //moving up
        direction = 2;
      } else if (vel.y > 0){ //moving down
        direction = 0;
      }
      
      if(frameCounter > framesPerAnimation * animationSpeed - 1){
        frameCounter = 0;
      }
      if(moving){
        image(spriteAnimation[direction][frameCounter/animationSpeed], pos.x, pos.y);
      } else { 
        image(spriteAnimation[direction][1], pos.x, pos.y);
      }
      
    } else { 
      
      //functionality for multiple(different) sprite animations
    
    }
  }

}
