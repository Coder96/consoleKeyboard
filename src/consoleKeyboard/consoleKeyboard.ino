
#include <Joystick.h>
#include <Keypad.h>

const byte ROWS = 10; //four rows
const byte COLS = 2; //three columns
char keys[ROWS][COLS] = {
  {'1','2'},
  {'3','4'},
  {'5','6'},
  {'7','8'},
  {'9','0'},
  {'A','B'},
  {'C','D'},
  {'E','F'},
  {'G','H'},
  {'I','J'}
};
byte rowPins[ROWS] = {7,8,9,10,14,15,16,18,19,20}; //connect to the row pinouts of the keypad
byte colPins[COLS] = {5,6}; //connect to the column pinouts of the keypad

Keypad keypad = Keypad( makeKeymap(keys), rowPins, colPins, ROWS, COLS );


void setup(){
  Serial.begin(9600);
  Joystick.begin();
}

void loop(){
  char key = keypad.getKey();

  if (key != NO_KEY){
    Serial.println(key);
    switch(key){
      case '1':
        joyButtontoggle(0);
        break;
      case '2':
        joyButtontoggle(1);
        break;
      case '3':
        joyButtontoggle(2);
        break;
      case '4':
        joyButtontoggle(3);
        break;
      case '5':
        joyButtontoggle(4);
        break;
      case '6':
        joyButtontoggle(5);
        break;
      case '7':
        joyButtontoggle(6);
        break;
      case '8':
        joyButtontoggle(7);
        break;
      case '9':
        joyButtontoggle(8);
        break;
      case '0':
        joyButtontoggle(9);
        break;
      case 'A':
        joyButtontoggle(10);
        break;
      case 'B':
        joyButtontoggle(11);
        break;
      case 'C':
        joyButtontoggle(12);
        break;
      case 'D':
        joyButtontoggle(13);
        break;
      case 'E':
        joyButtontoggle(14);
        break;
      case 'F':
        joyButtontoggle(15);
        break;
      case 'G':
        joyButtontoggle(16);
        break;
      case 'H':
        joyButtontoggle(17);
        break;
      case 'I':
        joyButtontoggle(18);
        break;
      case 'J':
        joyButtontoggle(19);
        break;
      case 'K':
        joyButtontoggle(20);
        break;
      default:
        break;
    }
  }
}

void joyButtontoggle(int buttonId){
  Joystick.pressButton(buttonId);
  delay(50);
  Joystick.releaseButton(buttonId);
}
