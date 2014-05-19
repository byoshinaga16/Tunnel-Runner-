

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
 
 
 if (Button_Down)        //if there is no wall below the player and the down button is pressed, everything but the player moves up
  {
    if (willCollide(270) == false)
    {
      for(int i = 0; i < 164; i++)
      {
        walls[i].y++;
      }
      markery++;
      marker2y++;
      marker3y++;
      marker4y++;
      marker5y++;
      marker6y++;
      aycoord++;
      bycoord++;
      cycoord++;
      dycoord++;
      eycoord++;
      fycoord++;
      gycoord++;
      hycoord++;
      iycoord++;
      jycoord++;
      kycoord++;
      lycoord++;
      pady++;
      pad2y++;
      pad3y++;
      pad4y++;
      rPady++;
      goldy++;
      gold2y++;
      gold3y++;
      gold4y++;
    }
  }
  if (Button_Up)        //if there is no wall below the player and the up button is pressed, everything but the player moves down
  {
    if (willCollide(90) == false)
    {
      for(int i = 0; i < 164; i++)
      {
        walls[i].y--;
      }
      markery--;
      marker2y--;
      marker3y--;
      marker4y--;
      marker5y--;
      marker6y--;
      aycoord--;
      bycoord--;
      cycoord--;
      dycoord--;
      eycoord--;
      fycoord--;
      gycoord--;
      hycoord--;
      iycoord--;
      jycoord--;
      kycoord--;
      lycoord--;
      pady--;
      pad2y--;
      pad3y--;
      pad4y--;
      rPady--;
      goldy--;
      gold2y--;
      gold3y--;
      gold4y--;
     
    }
  }
  if (Button_Left)     //if there is no wall to the left of the player and the left button is pressed, everything but the player moves right
  {
    if (willCollide(180) == false)
    {
      for(int i = 0; i < 164; i++)
      {
        walls[i].x++;
      }
      markerx++;
      marker2x++;
      marker3x++;
      marker4x++;
      marker5x++;
      marker6x++;
      axcoord++;
      bxcoord++;
      cxcoord++;
      dxcoord++;
      excoord++;
      fxcoord++;
      gxcoord++;
      hxcoord++;
      ixcoord++;
      jxcoord++;
      kxcoord++;
      lxcoord++;
      padx++;
      pad2x++;
      pad3x++;
      pad4x++;
      rPadx++;
      goldx++;
      gold2x++;
      gold3x++;
      gold4x++;
      
    }
  }
  if (Button_Right)    //if there is no wall to the right of the player and the right button is pressed, everything but the player moves left
  {
    if (willCollide(0) == false)
    {
      for(int i = 0; i < 164; i++)
      {
        walls[i].x--;
      }
      markerx--;
      marker2x--;
      marker3x--;
      marker4x--;
      marker5x--;
      marker6x--;
      axcoord--;
      bxcoord--;
      cxcoord--;
      dxcoord--;
      excoord--;
      fxcoord--;
      gxcoord--;
      hxcoord--;
      ixcoord--;
      jxcoord--;
      kxcoord--;
      lxcoord--;
      padx--;
      pad2x--;
      pad3x--;
      pad4x--;
      rPadx--;
      goldx--;
      gold2x--;
      gold3x--;
      gold4x--;
      
    }
  }
 
}
