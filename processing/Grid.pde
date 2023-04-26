
static final int SQUARE_SIZE = 100;
int [][]gridColors;
int x = 0;
int y = 0;
int mouseXPos;
int mouseYPos;
void setup() {
  size(800, 600);
  // grid size [int[width/SQUARE_SIZE]][[height/SQUARE_SIZE]]
  gridColors = new int[][] { {0, 1, 0, 1, 0, 1, 1, 0},
                             {1, 0, 1, 0, 1, 0, 1, 1},
                             {1, 1, 1, 1, 1, 1, 1, 1},
                             {0, 0, 0, 0, 0, 0, 1, 0},
                             {1, 1, 0, 0, 1, 1, 1, 0},
                             {1, 0, 1, 1, 1, 0, 1, 0}
                           };

}

void draw() {
   grid();
   print(mouseXPos);
   print(", " +mouseYPos);
   println();
}


/* Draw squares in your frame
   Add border to your squares, so it looks like a grid
   Choose two colors to fill your squares color0, color1
   If the cell in gridColors has the value 0, use the color0 for the corresponding square.
   If the cell in gridColors has the value 1, use the color1 for the corresponding square.
 */
void grid() {
  x=0;
  y=0;
  for(int[] array: gridColors){
    for(int i: array){
      if(i == 0){
        fill(500,500,500);
        rect(x,y,SQUARE_SIZE,SQUARE_SIZE); 
        x+=SQUARE_SIZE;
      }
      if(i == 1){
        fill(0,0,0);
        rect(x,y,SQUARE_SIZE,SQUARE_SIZE); 
        x+=SQUARE_SIZE;
      }
    }
    x = 0;
    y += SQUARE_SIZE;
  }
}


/* If you click on a square is should change the color (color0  to color1 or color1 to color0)
HINT: Select the square based on the position of the mouse 
*/
void mouseClicked() {
  mouseXPos = mouseX/100;
  mouseYPos = mouseY/100;
  //if(gridColors[mouseYPos][mouseXPos] == 1){
  //  gridColors[mouseYPos][mouseXPos] =0;
  //} else{
  //      gridColors[mouseYPos][mouseXPos] =1;
  //}
    if(gridColors[mouseYPos][mouseXPos] == 1){
    gridColors[mouseYPos][mouseXPos] =0;
  } else{
        gridColors[mouseYPos][mouseXPos] =1;
  }
  
}
