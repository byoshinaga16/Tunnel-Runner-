

#include <MeggyJrSimple.h>    // Required code, line 1 of 2.

void setup()                    // run once, when the sketch starts
{
  MeggyJrSimpleSetup();      // Required code, line 2 of 2.
}

int xcoord = 3;      //x coordinate for Player dot
int ycoord = 3;      //y coordinate for Player dot
int direction = 0;
int dir = 1;
 

boolean willCollide(int dir) // Collision detection with walls
{ 
  if (dir == 270)
  {
    if (ReadPx(xcoord,ycoord-1) == 0)
      return false;
     else return true;
  }
  else if (dir == 90)
  {
    if (ReadPx(xcoord,ycoord+1) == 0)
      return false;
     else return true;
  }
  else if (dir == 0)
  {
    if (ReadPx(xcoord+1,ycoord) == 0)
      return false;
     else return true;
  }
  else if (dir == 180)
  {
    if (ReadPx(xcoord-1, ycoord) == 0)
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
Point s2 = {2,6};
Point s3 = {2,7};
Point s4 = {4,9};
Point s5 = {4,5};
Point s6 = {4,6};
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
Point s33 = {8,7};
Point s34 = {5,11};
Point s35 = {6,11};
Point s36 = {8,9};

Point walls[36] = {s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s25,s25,s26,s27,s28,s29,s30,s31,s32,s33,s34,s35,s36};
  
  

  
  
  
void loop()                     // run over and over again
{
 drawFrame();
 drawPlayer();
 drawWall();
 wallMovement();
 DisplaySlate();
 delay(100);
 ClearSlate();
 
 
 
 
 
}

void drawFrame()        //draws a no-color frame around the meggy screen
{
  for(int i = 0; i < 28; i++)
  {
    DrawPx(frame[i].x,frame[i].y,0);
  }
}
  
  
  

void drawPlayer()       //draws dot in middle of the screen (represents player)
{
  DrawPx(xcoord,ycoord,15);
}




void drawWall()       //draws lines that make up maze walls
{
  for(int i = 0; i < 36; i++)
  {
    if(walls[i].y < 7 && walls[i].y > 0 && walls[i].x > 0 && walls[i].x < 7)   //walls will only be drawn on the screen if their coordinates are > 0 and < 7
    {
      DrawPx(walls[i].x,walls[i].y,1);
    }
  }
}




void wallMovement()
{
  CheckButtonsDown();      
  
 if (Button_Down)        //set variables for direction buttons
 {
   dir = 270;
 }
 if (Button_Up)
 {
   dir = 90;
 }
 if (Button_Right)
 {
   dir = 0;
 }
 if (Button_Left)
 {
   dir = 180;
 }
 
 
 
 if (Button_Down)       //if there is a red dot below the player, the walls won't move
  {
    if (willCollide(270) == false)
    {
      for(int i = 0; i < 36; i++)
      {
        walls[i].y++;
      }
    }
  }
  if (Button_Up)    //if there is a red dot above the player, the walls won't move
  {
    if (willCollide(90) == false)
    {
      for(int i = 0; i < 36; i++)
      {
        walls[i].y--;
      }
    }
  }
  if (Button_Left)    //if there is a red dot to the left of the player, the walls won't move
  {
    if (willCollide(180) == false)
    {
      for(int i = 0; i < 36; i++)
      {
        walls[i].x++;
      }
    }
  }
  if (Button_Right)    //if there is a red dot to the right of the player, the walls won't move
  {
    if (willCollide(0) == false)
    {
      for(int i = 0; i < 36; i++)
      {
        walls[i].x--;
      }
    }
  }
  
}
  
  
 
