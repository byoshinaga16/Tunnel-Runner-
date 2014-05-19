void drawPad()
{
  if(pady < 8 && pady > -1 && padx > -1 && padx < 8)    //pad will only be drawn on the screen if their coordinates are > -1 and < 8
  {
   DrawPx(padx,pady,13);
  }
}


void drawPad2()
{
  if(pad2y < 8 && pad2y > -1 && pad2x > -1 && pad2x < 8)    //pad will only be drawn on the screen if their coordinates are > -1 and < 8
  {
   DrawPx(pad2x,pad2y,13);
  }
}


void drawPad3()
{
  if(pad3y < 8 && pad3y > -1 && pad3x > -1 && pad3x < 8)    //pad will only be drawn on the screen if their coordinates are > -1 and < 8
  {
   DrawPx(pad3x,pad3y,13);
  }
}


void drawPad4()
{
  if(pad4y < 8 && pad4y > -1 && pad4x > -1 && pad4x < 8)    //pad will only be drawn on the screen if their coordinates are > -1 and < 8
  {
   DrawPx(pad4x,pad4y,13);
  }
}


void drawRPad()
{
  if(rPady < 8 && rPady > -1 && rPadx > -1 && rPadx < 8)    //pad will only be drawn on the screen if their coordinates are > -1 and < 8
  {
   DrawPx(rPadx,rPady,13);
  }
}



