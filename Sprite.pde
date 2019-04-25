public class Sprite { 
  
  PImage spritesheet; //for storing sprites2DArrayheets
  PImage[][] sprites2DArray; //for storing sprites2DArray in a 2D array to be used in animation later
  
  Sprite(String sprites2DArrayheet, int rows, int columns){  
    this.spritesheet = loadImage(sprites2DArrayheet);
    sprites2DArray = new PImage[rows][columns];
  }
  
  void cutOutsprites2DArray(int x, int y, int xIncre, int yIncre, int Width, int Length ){ //this only works for evenly spaced out sprites2DArrayheets

    for(int j = 0; j < sprites2DArray.length; j++){ //goes through each column of sprites2DArray
      for(int i = 0; i < sprites2DArray[0].length; i++){ //sprites2DArray[0].length find the length of a row and goes through it
          sprites2DArray[j][i] = spritesheet.get(x + (xIncre * i), y + (yIncre * j), Width, Length); //cuts out sprites2DArray from sheet bases on dimensions given
      } 
    }
     
  }
  
  
}
