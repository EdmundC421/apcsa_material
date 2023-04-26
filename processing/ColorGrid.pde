static final int SQUARE_SIZE = 100;
int [][]gridColors;

void setup() {
  size(815, 672);
  // grid size [int[width/SQUARE_SIZE]][[height/SQUARE_SIZE]]
  gridColors = new int[][] { {0, 1, 0, 1, 0, 1, 1, 0},
                             {1, 0, 1, 0, 1, 0, 1, 1},
                             {1, 1, 1, 1, 1, 1, 1, 1},
                             {0, 0, 0, 0, 0, 0, 1, 0},
                             {1, 1, 0, 0, 1, 1, 1, 0},
                             {1, 0, 1, 1, 1, 0, 1, 0},
                           };

}


/* Draw squares in your frame. There should be space between squares.
   Choose two colors to fill your squares color0, color1
   If the cell in gridColors has the value 0, use the color0 for the corresponding square.
   If the cell in gridColors has the value 1, use the color1 for the corresponding square.
 */
void grid(int[][]colors) {

}

void draw() {
   grid(gridColors);
}

/* If you click on a square is should change the color (color0  to color1 or color1 to color0)
HINT: Select the square based on the position of the mouse 
*/
void mouseClicked() {

}