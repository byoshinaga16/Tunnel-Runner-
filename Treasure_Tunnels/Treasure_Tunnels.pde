

#include <MeggyJrSimple.h>    // Required code, line 1 of 2.

void setup()                    // run once, when the sketch starts
{
  MeggyJrSimpleSetup();      // Required code, line 2 of 2.
  Serial.begin(9600);
}

int xcoord = 3;     //x coordinate for Player dot
int ycoord = 3;     //y coordinate for Player dot
int dir = 1;        // direction value = 1 when game starts
int axcoord = 17;   //x coordinate for enemy A 
int aycoord = 3;    //y coodrinate for enemy A 
int bxcoord = 9;    //x coordinate for enemy B
int bycoord = 3;    //y coordinate for enemy B
int cxcoord = 13;   //x coordinate for enemy C
int cycoord = 3;    //y coordinate for enemy C
int dxcoord = -4;   //x coordinate for enemy D
int dycoord = 1;    //y coordinate for enemy D
int excoord = -6;   //x coordinate for enemy E
int eycoord = 3;    //y coordinate for enemy E
int fxcoord = -8;   //x coordinate for enemy F
int fycoord = 5;    //y coordinate for enemy F
int gxcoord = 3;    //x coordinate for enemy G
int gycoord = -11;  //y coordinate for enemy G
int hxcoord = 1;    //x coordinate for enemy H
int hycoord = 15;    //y coordinate for enemy H
int ixcoord = 3;    //x coordinate for enemy I
int iycoord = 15;    //y coordinate for enemy I
int jxcoord = 5;    //x coordinate for enemy J
int jycoord = 15;    //y coordinate for enemy J
int kxcoord = 2;    //x coordinate for enemy K
int kycoord = 9;   //y coordinate for enemy K
int lxcoord = 4;    //x coordinate for enemy L
int lycoord = 9;   //y coordinate for enemy L
int counterA = 1;   //initial counter value for enemy A
int counterB = 1;   //initial counter value for enemy B 
int counterC = 1;   //initial counter value for enemy C
int counterD = 0;   //initial counter value for enemy D
int counterE = 2;   //initial counter value for enemy E
int counterF = 4;   //initial counter value for enemy F
int counterG = 0;   //initial counter value for enemy G  
int markerx = 3;    //x coordinate for marker is 3
int markery = 0;    //y coordinate for marker is 0
int marker2x = 2;   //x coordinate for marker2 is 2
int marker2y = 15;   //y coordinate for marker2 is 9
int marker3x = 4;   //x coordinate for marker3 is 4
int marker3y = 15;   //y coordinate for marker3 is 9
int marker4x = 1;   //x coordinate for marker4 is 1
int marker4y = 9;  //y coordinate for marker4 is 15
int marker5x = 3;   //x coordinate for marker5 is 3
int marker5y = 9;  //y coordinate for marker5 is 15
int marker6x = 5;   //x coordinate for marker6 is 5
int marker6y = 9;  //y coordinate for marker6 is 15
int padx = 3;  //x coordinate for teleport pad
int pady = 17; //y coordinate for teleport pad
int pad2x = 23; //x coordinate for teleport pad 2
int pad2y = 3;  //y coordinate for teleport pad 2
int pad3x = 3;  //x coordinate for teleport pad 3
int pad3y = -14; //y coordinate for teleport pad 3
int pad4x = -11; //x coordinate for teleport pad 4
int pad4y = 3;  //y coordinate for teleport pad 4
int rPadx = 2;  //x coordinate for return pad
int rPady = 4;  //y coordinate for return pad
int goldx = 3;  //x coordinates fo gold
int goldy = 16;  //y coordinates for gold
int gold2x = 22;  //x coordinates for gold 2
int gold2y = 3;  //y coordinates for gold 2
int gold3x = 3;  //x coordinates for gold 3
int gold3y = -13;  //y coordinates for gold 3
int gold4x = -10;  //x coordinates for gold 4
int gold4y = 3;  //y coordinates for gold 4
int goldCounter = 1; //counter for gold booleans 
int timerA = 525;   //this timer variable will be a 500 millisecond delay for enemy movement
long int time = millis();  //the variable time equals the amount of milliseconds since the meggy is turned on

boolean aBoolean = true;  //boolean statements for enemies to keep them running back and forth
boolean bBoolean = true;
boolean cBoolean = true;
boolean dBoolean = true;
boolean eBoolean = true;
boolean fBoolean = false; 
boolean gBoolean = true;

boolean gold = true;     //boolean statement to spawn gold randomly in four different coordinates
boolean goldd = false;
boolean golddd = false;
boolean goldddd = false;

boolean endGame = false;  //boolean statement for the end game scenerio

boolean willCollide(int dir) // Collision detection with walls
{ 
  if (dir == 270)
  {
    if (ReadPx(xcoord,ycoord-1) == 15)    //if there is no wall bellow the player and the walls try to move up, the walls can move
      return true;
     else return false;
  }
  else if (dir == 90)
  {
    if (ReadPx(xcoord,ycoord+1) == 15)    //if there is no wall above the player and the walls try to move down, the walls can move
      return true;
     else return false;
  }
  else if (dir == 0)
  {
    if (ReadPx(xcoord+1,ycoord) == 15)    //if there is no wall to the right of the player and the wall tries to move left, the walls can move
      return true;
     else return false;
  }
  else if (dir == 180)
  {
    if (ReadPx(xcoord-1, ycoord) == 15)   //if there is no wall to the left of the player and the walls try to move right, the walls can move
      return true;
     else return false;
  }
} 



  
void loop()                     // run over and over again
{
  
 drawPlayer();
 drawWall();
 drawEnemyA();
 drawEnemyB();
 drawEnemyC();
 drawEnemyD();
 drawEnemyE();
 drawEnemyF();
 drawEnemyG();
 drawEnemyH();
 drawEnemyI();
 drawEnemyJ();
 drawEnemyK();
 drawEnemyL();
 drawPad();
 drawPad2();
 drawPad3();
 drawPad4();
 drawRPad();
 spawnGold();
 movement();
 teleport();
 enemyCollision();
 if(millis() >= time) enemyMovement(); //this code (from forums) provides seperate delay for this method
 DisplaySlate();
 delay(125);
 ClearSlate();

 
}

  

    
 
 



 
