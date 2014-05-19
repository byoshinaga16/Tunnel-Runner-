void enemyCollision()     //enemy collision detection and end game scenario
{
  if (ReadPx(xcoord,ycoord) == 1)   //if the player dot collides with a red dot
  {
    for (int i = 7; i > -1; i--)
    {
      xcoord = 100;    //sends x coordinate into unplayable area so game can't continue
      ycoord = 100;    //sends y coordinate into unplayable area so game can't continue
      Tone_Start(ToneDs9,50);  //when collision with red dot, death tone plays
      Tone_Start(ToneB2,50);
      DrawPx(0,i,1);    //creates red curtain which falls over screen
      DrawPx(1,i,1);
      DrawPx(2,i,1);
      DrawPx(3,i,1);
      DrawPx(4,i,1);
      DrawPx(5,i,1);
      DrawPx(6,i,1);
      DrawPx(7,i,1);
      DisplaySlate();
      delay(50);
      endGame = true;
    }
  }
  if (endGame == true)   //keeps screen colored red until A button is pressed
  {
    for (int i = 7; i > -1; i--)
    {
      DrawPx(0,i,1);
      DrawPx(1,i,1);
      DrawPx(2,i,1);
      DrawPx(3,i,1);
      DrawPx(4,i,1);
      DrawPx(5,i,1);
      DrawPx(6,i,1);
      DrawPx(7,i,1);
    }
  }
  if (Button_A)
  {
    asm volatile ("  jmp 0");    //resets game (code from arduino forums)
  }
 
}
