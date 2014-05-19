void ledScoring()
{
  if (ledCounter == 1)      //if 1 gold dot taken, 1 LED lights up
  {  
    SetAuxLEDs(1);
  }
  if (ledCounter == 2)      //if 2 gold dots taken, 2 LED lights up
  {
    SetAuxLEDs(3);
  }
  if (ledCounter == 3)      //if 3 gold dots taken, 3 LED lights up
  {
    SetAuxLEDs(7);
  }
  if (ledCounter == 4)      //if 4 gold dots taken, 4 LED lights up
  {
    SetAuxLEDs(15);
  }
  if (ledCounter == 5)      //if 5 gold dots taken, 5 LED lights up
  {
    SetAuxLEDs(31);
  }
  if (ledCounter == 6)      //if 6 gold dots taken, 6 LED lights up
  {
    SetAuxLEDs(63);
  }
  if (ledCounter == 7)      //if 7 gold dots taken, 7 LED lights up
  {
    SetAuxLEDs(127);
  }
  if (ledCounter == 8)      //if 8 gold dots taken, 8 LED lights up
  {
    SetAuxLEDs(255);
  }
    if (ledCounter == 9)      //if 9 gold dot taken, 1 LED lights up
  {  
    SetAuxLEDs(254);
  }
  if (ledCounter == 10)      //if 10 gold dots taken, 2 LED lights up
  {
    SetAuxLEDs(252);
  }
  if (ledCounter == 11)      //if 11 gold dots taken, 3 LED lights up
  {
    SetAuxLEDs(248);
  }
  if (ledCounter == 12)      //if 12 gold dots taken, 4 LED lights up
  {
    SetAuxLEDs(240);
  }
  if (ledCounter == 13)      //if 13 gold dots taken, 5 LED lights up
  {
    SetAuxLEDs(244);
  }
  if (ledCounter == 14)      //if 14 gold dots taken, 6 LED lights up
  {
    SetAuxLEDs(192);
  }
  if (ledCounter == 15)      //if 15 gold dots taken, 7 LED lights up
  {
    SetAuxLEDs(128);
  }
  if (ledCounter == 16)      //if 16 gold dots taken, 8 LED lights up
  {
    SetAuxLEDs(0);
  }
}
