

#include <MeggyJrSimple.h>    // Required code, line 1 of 2.

void setup()                    // run once, when the sketch starts
{
  MeggyJrSimpleSetup();      // Required code, line 2 of 2.
  Serial.begin(9600);
}

int xcoord = 3;      //x coordinate for Player dot
int ycoord = 3;      //y coordinate for Player dot
int dir = 1;        // direction value = 1 when game starts
int Axcoord = 7;     //x coordinate for Enemy A 
int Aycoord = 10;    //y coodrinate for Enemy A 
int counter = 0;

//boolean enemyMovement = true;

boolean willCollide(int dir) // Collision detection with walls
{ 
  if (dir == 270)
  {
    if (ReadPx(xcoord,ycoord-1) == 0)    //if there is a wall below the player and the walls try to move up, the walls won't move
      return false;
     else return true;
  }
  else if (dir == 90)
  {
    if (ReadPx(xcoord,ycoord+1) == 0)    //if there is a wall above the player and the walls try to move down, the wall won't move
      return false;
     else return true;
  }
  else if (dir == 0)
  {
    if (ReadPx(xcoord+1,ycoord) == 0)    //if there is a wall to the right of the player and the wall tries to mvoe left, the wall won't move
      return false;
     else return true;
  }
  else if (dir == 180)
  {
    if (ReadPx(xcoord-1, ycoord) == 0)   //if there is a wall to the left of the player and the wall tries to move right, the wall won't move
      return false;
     else return true;
  }
} 

struct Poin      //defined struct (frame array)
{
 int x;
 int y;
}; 

Poin a1 = {0,0};         //defines points in array (frame around meggy screen)
Poin a2 = {0,7};
Poin a3 = {1,7};
Poin a4 = {2,7};
Poin a5 = {3,7};
Poin a6 = {4,7};
Poin a7 = {5,7};
Poin a8 = {6,7};
Poin a9 = {7,7};
Poin a10 = {7,0};
Poin a11 = {6,0};
Poin a12 = {5,0};
Poin a13 = {4,0};
Poin a14 = {3,0};
Poin a15 = {2,0};
Poin a16 = {1,0};
Poin a17 = {0,1};
Poin a18 = {0,2};
Poin a19 = {0,3};
Poin a20 = {0,4};
Poin a21 = {0,5};
Poin a22 = {0,6};
Poin a23 = {7,1};
Poin a24 = {7,2};
Poin a25 = {7,3};
Poin a26 = {7,4};
Poin a27 = {7,5};
Poin a28 = {7,6};
  
Poin frame[28] = {a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28};
 
 
 
 
 
 
 
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

Point walls[115] = {s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s25,s25,s26,s27,s28,s29,s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,s61,s62,s63,s64,s65,s66,s67,s68,s69,s70,s71,s72,s73,s74,s75,s76,s77,s78,s79,s80,s81,s82,s83,s84,s85,s86,s87,s88,s89,s90,s91,s92,s93,s94,s95,s96,s97,s98,s99,s100,s101,s102,s103,s104,s105,s106,s107,s108,s109,s110,s111,s112,s113,s114,s115};
  
  

  
  
  
void loop()                     // run over and over again
{

 drawPlayer();
 drawWall();
 movement();
 drawEnemyA();
 DisplaySlate();
 delay(125);
 ClearSlate();
 
 
 
 
 
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
  for(int i = 0; i < 115; i++)
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
 
 
 
 if (Button_Down)        //if there is no wall below the player, the walls can move up
  {
    if (willCollide(270) == false)
    {
      for(int i = 0; i < 115; i++)
      {
        walls[i].y++;
        Aycoord++;
      }
    }
  }
  if (Button_Up)        //if there is no wall below the player, the walls can move down
  {
    if (willCollide(90) == false)
    {
      for(int i = 0; i < 115; i++)
      {
        walls[i].y--;
        Aycoord--;
      }
    }
  }
  if (Button_Left)     //if there is no wall to the left of the player, the walls can move right
  {
    if (willCollide(180) == false)
    {
      for(int i = 0; i < 115; i++)
      {
        walls[i].x++;
        Axcoord++;
      }
    }
  }
  if (Button_Right)    //if there is no wall to the right of the player, the walls can move left
  {
    if (willCollide(0) == false)
    {
      for(int i = 0; i < 115; i++)
      {
        walls[i].x--;
        Axcoord--;
      }
    }
  }
  
  if (Button_A)
  {
    Serial.println(Axcoord);
    Serial.println(Aycoord);
    Serial.println();
  }
  
}
  
  
 
