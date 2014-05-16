

#include <MeggyJrSimple.h>    // Required code, line 1 of 2.

void setup()                    // run once, when the sketch starts
{
  MeggyJrSimpleSetup();      // Required code, line 2 of 2.
  Serial.begin(9600);
}

int xcoord = 3;      //x coordinate for Player dot
int ycoord = 3;      //y coordinate for Player dot
int dir = 1;        // direction value = 1 when game starts
int Axcoord = 7;     //x coordinate for enemy A 
int Aycoord = 10;    //y coodrinate for enemy A 
int counterA = 2;   //counter for enemy A
int timerA = 500;   //this timer variable will be a 500 millisecond delay for enemy movement
long int time = millis();  //the variable time equals the amount of milliseconds since the meggy is turned on

boolean enemyAMovement = true;


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

struct Poin      //defined struct (frame array)
{
 int x;
 int y;
}; 

struct Point      //defined struct
{
 int x;
 int y;
}; 

Point s1 = {2,5};         //defines points in array (maze walls)
Point s2 = {0,7};
Point s3 = {2,7};
Point s4 = {4,9};
Point s5 = {4,5};
Point s6 = {1,7};
Point s7 = {4,7};
Point s8 = {1,5};
Point s9 = {1,4};
Point s10 = {1,3};
Point s11 = {1,2};
Point s12 = {1,1};
Point s13 = {2,1};
Point s14 = {3,1};
Point s15 = {4,1};
Point s16 = {5,1};
Point s17 = {5,2};
Point s18 = {5,3};
Point s19 = {5,4};
Point s20 = {5,5};
Point s21 = {2,9};
Point s22 = {4,10};
Point s23 = {2,10};
Point s24 = {5,9};
Point s25 = {5,7};
Point s26 = {6,7};
Point s27 = {6,9};
Point s28 = {2,11};
Point s29 = {2,8};
Point s30 = {4,11};
Point s31 = {7,7};
Point s32 = {7,9};
Point s33 = {9,1};
Point s34 = {5,11};
Point s35 = {6,11};
Point s36 = {8,9};
Point s37 = {0,0};
Point s38 = {0,1};
Point s39 = {0,2};
Point s40 = {0,3};
Point s41 = {0,4};
Point s42 = {0,5};
Point s43 = {1,0};
Point s44 = {2,0};
Point s45 = {3,0};
Point s46 = {4,0};
Point s47 = {5,0};
Point s48 = {6,0};
Point s49 = {6,1};
Point s50 = {6,2};
Point s51 = {6,3};
Point s52 = {6,4};
Point s53 = {6,5};
Point s54 = {-1,-1};
Point s55 = {-1,0};
Point s56 = {-1,1};
Point s57 = {-1,2};
Point s58 = {-1,3};
Point s59 = {-1,4};
Point s60 = {-1,5};
Point s61 = {0,-1};
Point s62 = {1,-1};
Point s63 = {2,-1};
Point s64 = {3,-1};
Point s65 = {4,-1};
Point s66 = {5,-1};
Point s67 = {6,-1};
Point s68 = {7,-1};
Point s69 = {7,0};
Point s70 = {7,1};
Point s71 = {7,2};
Point s72 = {7,3};
Point s73 = {7,4};
Point s74 = {7,5};
Point s75 = {9,7};
Point s76 = {9,6};
Point s77 = {9,5};
Point s78 = {9,3};
Point s79 = {9,2};
Point s80 = {8,11};
Point s81 = {8,12};
Point s82 = {7,12};
Point s83 = {6,12};
Point s84 = {9,9};
Point s85 = {9,8};
Point s86 = {-1,7};
Point s87 = {8,7};
Point s88 = {-2,7};
Point s89 = {-3,7};
Point s90 = {-3,6};
Point s91 = {-3,5};
Point s92 = {-3,4};
Point s93 = {-3,3};
Point s94 = {-3,2};
Point s95 = {-3,1};
Point s96 = {-3,0};
Point s97 = {-3,-1};
Point s98 = {-3,-2};
Point s99 = {-2,-3};
Point s100 = {-1,-3};
Point s101 = {0,-3};
Point s102 = {1,-3};
Point s103 = {2,-3};
Point s104 = {3,-3};
Point s105 = {4,-3};
Point s106 = {5,-3};
Point s107 = {6,-3};
Point s108 = {7,-3};
Point s109 = {8,-3};
Point s110 = {9,-3};
Point s111 = {9,-3};
Point s112 = {9,-1};
Point s113 = {9,0};
Point s114 = {9,1};
Point s115 = {-3,-3};
Point s116 = {9,11};
Point s117 = {10,11};
Point s118 = {11,11};
Point s119 = {11,10};
Point s120 = {11,9};

Point walls[120] = {s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s25,s25,s26,s27,s28,s29,s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,s61,s62,s63,s64,s65,s66,s67,s68,s69,s70,s71,s72,s73,s74,s75,s76,s77,s78,s79,s80,s81,s82,s83,s84,s85,s86,s87,s88,s89,s90,s91,s92,s93,s94,s95,s96,s97,s98,s99,s100,s101,s102,s103,s104,s105,s106,s107,s108,s109,s110,s111,s112,s113,s114,s115,s116,s117,s118,s119,s120};
  
  

  
  
  
void loop()                     // run over and over again
{
 millis();
 drawPlayer();
 drawWall();
 drawEnemyA();
 movement();
 if(millis() >= time) enemyMovement();  //this code (from forums) provides seperate delay for this method
 DisplaySlate();
 delay(125);
 ClearSlate();
 millis();
 
 
 
 
}

 
 
 
 
 
void drawPlayer()       //draws dot in middle of the screen (represents player)
{
  DrawPx(xcoord,ycoord,10);
}

void drawEnemyA()
{
  if(Aycoord < 8 && Aycoord > -1 && Axcoord > -1 && Axcoord < 8)    //enemy will only be drawn on the screen if their coordinates are > -1 and < 8
  {
   DrawPx(Axcoord,Aycoord,1);
  }
}






void drawWall()       //draws lines that make up maze walls
{
  for(int i = 0; i < 120; i++)
  {
    if(walls[i].y < 8 && walls[i].y > -1 && walls[i].x > -1 && walls[i].x < 8)   //walls will only be drawn on the screen if their coordinates are > -1 and < 8
    {
      DrawPx(walls[i].x,walls[i].y,15);
    }
  }
}




void movement()
{
  CheckButtonsDown();      
  
 if (Button_Down)        //if the down button is pressed, the direction value becomes 270
 {
   dir = 270;
 }
 if (Button_Up)    //if the up button is pressed, the direction value becomes 90
 {
   dir = 90;
 }
 if (Button_Right)   //if the right button is pressed, the direction value becomes 0
 {
   dir = 0;
 }
 if (Button_Left)    //if the left button is pressed, the direction value becomes 180
 {
   dir = 180;
 }
 
 
 if (Button_Down)        //if there is no wall below the player and the down button is pressed, the walls and enemies move up
  {
    if (willCollide(270) == false)
    {
      for(int i = 0; i < 120; i++)
      {
        walls[i].y++;
      }
      Aycoord++;
    }
  }
  if (Button_Up)        //if there is no wall below the player and the up button is pressed, the walls and enemies move down
  {
    if (willCollide(90) == false)
    {
      for(int i = 0; i < 120; i++)
      {
        walls[i].y--;
      }
      Aycoord--;
    }
  }
  if (Button_Left)     //if there is no wall to the left of the player and the left button is pressed, the walls and enemies move right
  {
    if (willCollide(180) == false)
    {
      for(int i = 0; i < 120; i++)
      {
        walls[i].x++;
      }
      Axcoord++;
    }
  }
  if (Button_Right)    //if there is no wall to the right of the player and the right button is pressed, the walls and enemies move left
  {
    if (willCollide(0) == false)
    {
      for(int i = 0; i < 120; i++)
      {
        walls[i].x--;
      }
      Axcoord--;
    }
  }
 
}
  
  
  
  
  
  
  
void enemyMovement() // 
{
  time = millis() + timerA;     //this code (from forums) provides seperate delay time for this method
  if (enemyAMovement == true)    //when the boolean statement is true, the enemy dot is moving to the right
  {
    Axcoord++;
    counterA++;
   }
   if (enemyAMovement == false)   //when the boolean statement is false, the enemy dot is moving to the left
   {
     Axcoord--;
     counterA--;
    }
    if (counterA == 5)    //when the enemy dot moves right 5 spaces, the boolean statement turns false and the enemy starts moving left
    {
      enemyAMovement = false;
     }
     if (counterA == 0)  //when the enemy dot moves left 5 spaces, the boolean statement turns true and the enemy starts moving right
      {
        enemyAMovement = true;
       }
    
}
    


    
 



 
