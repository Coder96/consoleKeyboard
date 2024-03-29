                                                                                                         
#include "Joystick.h"
#include <Keypad.h>
// When there are 2 Rows

#include "keypad_2x9.h"
//#include "keypad_2x10.h"
//#include "keypad_3x10.h"
//#include "keypad_2x5_4x5.h"

Keypad keypad = Keypad( makeKeymap(keys), rowPins, colPins, ROWS, COLS );

Joystick_ Joystick;

//(JOYSTICK_DEFAULT_REPORT_ID,JOYSTICK_TYPE_GAMEPAD,
//  30, 0,                  // Button Count, Hat Switch Count
//  false, false, false,     // X and Y, but no Z Axis
//  false, false, false,   // No Rx, Ry, or Rz
//  false, false,          // No rudder or throttle
//  false, false, false);  // No accelerator, brake, or steering

void setup(){
  Serial.begin(9600);
  Joystick.begin();
}

void loop(){
  char key = keypad.getKey();

  if (key != NO_KEY){
    Serial.println(key);
    
    joyButtontoggle(searchKeysArray(key));
    
//    switch(key){
//      case '1':
//        0);
//        break;
     
  }
}

void joyButtontoggle(int buttonId){
  Joystick.pressButton(buttonId);
  delay(50);
  Joystick.releaseButton(buttonId);
}

int searchKeysArray(char searchVal){
    int arysz = 31;
    int ary[31] = {
        '0','1','2','3','4','5','6','7','8','9',
        'A','B','C','D','E','F','G','H','I','J',
        'K','L','M','N','O','P','Q','R','S','T'};
    int returnPos = -1;
    for (int i=0; i<arysz; i++) {
        if (searchVal == ary[i]) {
            returnPos = i;
            break;
        }
    }
    return returnPos;
}
