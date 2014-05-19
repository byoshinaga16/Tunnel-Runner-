  
void enemyMovement() 
{
  time = millis() + timerA;     //this code (from forums) provides seperate delay time for this method
  if (aBoolean == true)    //when the boolean statement is true, the enemy dot is moving to the right
  {
    axcoord++;
    counterA++;
  }
  if (aBoolean == false)   //when the boolean statement is false, the enemy dot is moving to the left
  {
    axcoord--;
    counterA--;
  }
  if (counterA == 5)    //when enemy A moves right 5 spaces, the boolean statement turns false and the enemy starts moving left
  {
    aBoolean = false;
  }
  if (counterA == 0)  //when enemy A moves left 5 spaces, the boolean statement turns true and the enemy starts moving right
  {
    aBoolean = true;
  }
   if (bBoolean == true)    //when the boolean statement is true, the enemy dot is moving to the right
  {
    bxcoord++;
    counterB++;
  }
  if (bBoolean == false)   //when the boolean statement is false, the enemy dot is moving to the left
  {
    bxcoord--;
    counterB--;
  }
  if (counterB == 5)    //when enemy B moves right 6 spaces, the boolean statement turns false and the enemy starts moving left
  {
    bBoolean = false;
  }
  if (counterB == 0)  //when enemy B moves left 6 spaces, the boolean statement turns true and the enemy starts moving right
  {
    bBoolean = true;
  }
 if (cBoolean == true)    //when the boolean statement is true, the enemy dot is moving to the right
  {
    cxcoord++;
    counterC++;
  }
  if (cBoolean == false)   //when the boolean statement is false, the enemy dot is moving to the left
  {
    cxcoord--;
    counterC--;
  }
  if (counterC == 5)    //when enemy C moves right 5 spaces, the boolean statement turns false and the enemy starts moving left
  {
    cBoolean = false;
  }
  if (counterC == 0)  //when enemy C moves left 5 spaces, the boolean statement turns true and the enemy starts moving right
  {
    cBoolean = true;
  }    
  if (dBoolean == true)    //when the boolean statement is true, enemy D is moving up
  {
    dycoord++;
    counterD++;
  }
  if (dBoolean == false)   //when the boolean statement is false, enemy D is moving down
  {
    dycoord--;
    counterD--;
  }
  if (counterD == 4)    //when enemy D moves up 4 spaces, the boolean statement turns false and the enemy starts moving down
  {
    dBoolean = false;
  }
  if (counterD == 0)  //when enemy D moves down 4 spaces, the boolean statement turns true and the enemy starts moving up
  {
    dBoolean = true;
  }    
  if (eBoolean == true)    //when the boolean statement is true, enemy E is moving up
  {
    eycoord++;
    counterE++;
  }
  if (eBoolean == false)   //when the boolean statement is false, enemy E is moving to the down
  {
    eycoord--;
    counterE--;
  }
  if (counterE == 4)    //when enemy E moves up 4 spaces, the boolean statement turns false and the enemy starts moving down
  {
    eBoolean = false;
  }
  if (counterE == 0)  //when enemy E moves down 4 spaces, the boolean statement turns true and the enemy starts moving up
  {
    eBoolean = true;
  }    
  if (fBoolean == true)    //when the boolean statement is true, enemy F is moving to the up
  {
    fycoord++;
    counterF++;
  }
  if (fBoolean == false)   //when the boolean statement is false, enemy F is moving to the down
  {
    fycoord--;
    counterF--;
  }
  if (counterF == 4)    //when enemy F moves up 4 spaces, the boolean statement turns false and the enemy starts moving down
  {
    fBoolean = false;
  }
  if (counterF == 0)  //when enemy F moves down 4 spaces, the boolean statement turns true and the enemy starts moving up
  {
    fBoolean = true;
  }    
  if (gBoolean == true)    //when the boolean statement is true, enemy G is moving up 2 spaces
  {
    gycoord = gycoord+2;
    counterG++;
  }
  if (gBoolean == false)   //when the boolean statement is false, enemy G is moving down
  {
    gycoord--;
    counterG--;
  }
  if (counterG == 1)    //when enemy G moves up 2 spaces, the boolean statement turns false and the enemy starts moving down
  {
    gBoolean = false;
  }
  if (counterG == 0)  //when enemy D moves down 1 spaces, the boolean statement turns true and the enemy starts moving up
  {
    gBoolean = true;
  }    
  if (gycoord == markery && gxcoord == markerx)    //when enemy G reaches a certain point, it resets to its starting point
  {
    gycoord = gycoord-11;
  }
  hycoord--;                                    
  iycoord--;
  jycoord--;
  kycoord++;
  lycoord++;
  if (hycoord == marker4y && hxcoord == marker4x)    //when enemy H hits the invisible marker, it will loop back around to its starting position
  {
    hycoord = hycoord+6;
  }
  if (iycoord == marker5y && ixcoord == marker5x)    //when enemy I hits the invisible marker, it will loop back around to its starting position
  {
    iycoord = iycoord+6;
  }
  if (jycoord == marker6y && jxcoord == marker6x)    //when enemy J hits the invisible marker, it will loop back around to its starting position
  {
    jycoord = jycoord+6;
  }
  if (lycoord == marker3y && lxcoord == marker3x)    //when enemy L hits the invisible marker, it will loop back around to its starting position
  {
    lycoord = lycoord-6;
  }
  if (kycoord == marker2y && kxcoord == marker2x)    //when enemy K hits the invisible marker, it will loop back around to its starting position
  {
    kycoord = kycoord-6;
  }

}

    
