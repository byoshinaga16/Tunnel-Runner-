

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
    if (ReadPx(xcoord,ycoord+1) == 0)
      return false;
     else return true;
  }
  else if (dir == 90)
  {
    if (ReadPx(xcoord,ycoord-1) == 0)
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
 
struct Point      //defined struct
{
 int x;
 int y;
}; 

Point s1 = {2,5};         //defines points in array (maze walls)
Point s2 = {2,6};
Point s3 = {2,7};
Point s4 = {2,8};
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
Point s22 = {3,9};

Point walls[22] = {s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22};
  
  
void loop()                     // run over and over again
{
 drawPlayer();
 drawWall();
 wallMovement();
// playerLimits();
 DisplaySlate();
 delay(100);
 ClearSlate();
 
 
 
 
 
}



void drawPlayer()       //draws dot in middle of the screen (represents player)
{
  DrawPx(xcoord,ycoord,15);
}




void drawWall()       //draws lines that make up maze walls
{
  for(int i = 0; i < 22; i++)
  {
    if(walls[i].y < 7 && walls[i].y > 0) //prevents overlapping of array  
    {
      DrawPx(walls[i].x,walls[i].y,1);
    }
  }
}



void wallMovement()
{
  CheckButtonsDown();
  
 if (Button_Down)
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
 /* for(int i = 0; i < 22; i++)
    {
      if(Button_Down)    //if down button is pressed, move maze walls up (looks like player moves down)
      {
        walls[i].y++;
      }

      if(Button_Up)  //if up button is pressed, move maze walls down (looks like player moves up)
      {
        walls[i].y--;
      }

      if(Button_Left)  //if left button is pressed, move maze walls right (looks like player moves left)
      {
        walls[i].x++;
      }
 
      if(Button_Right)  //if right button is pressed, move maze walls left (looks like player moves right)
      {
        walls[i].x--;
      }

    }
} */




 if (Button_Down)
  {
    if (willCollide(270) == false)
    {
      for(int i = 0; i < 22; i++)
      {
        walls[i].y++;
      }
    }
  }
  if (Button_Up)
  {
    if (willCollide(90) == false)
    {
      for(int i = 0; i < 22; i++)
      {
        walls[i].y--;
      }
    }
  }
  if (Button_Left)
  {
    if (willCollide(180) == false)
    {
      for(int i = 0; i < 22; i++)
      {
        walls[i].x++;
      }
    }
  }
  if (Button_Right)
  {
    if (willCollide(180) == false)
    {
      for(int i = 0; i < 22; i++)
      {
        walls[i].x--;
      }
    }
  }
  
  
}
  
  
  /*for(int j = 0; j < 22; j++)
  {
    for(int i = 0; i < 22; i++)
    {
      if(Button_Down)        //if the wall collides with the player dot by moving up, the entire wall moves down one coordinate
      {
        if (walls[i].x == xcoord && walls[i].y == ycoord)
        {
          walls[j].y--;
        }
      }
      if(Button_Up)          //if the wall collides with the player dot by moving down, the entire wall moves up one coordinate
      {
        if(walls[i].x == xcoord && walls[i].y == ycoord)
        {
          walls[j].y++;
        }
      }
      if(Button_Left)         //if the wall collides with the player dot by moving right, the entire wall moves left one coordinate
      {
        if(walls[i].x == xcoord && walls[i].y == ycoord)
        {   
          walls[j].x--;   
        }
      }
      if(Button_Right)        //if the wall collides with the player dot by moving left, the entire wall moves right one coordinate
      {
        if(walls[i].x == xcoord && walls[i].y == ycoord)
        { 
          walls[j].x++; 
        }
      }
    }
  }
} */

