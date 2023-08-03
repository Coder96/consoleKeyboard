const byte ROWS = 10;
const byte COLS = 3;
char keys[ROWS][COLS] = {
  {'0','A','K'},
  {'1','B','L'},
  {'2','C','M'},
  {'3','D','N'},
  {'4','E','O'},
  {'5','F','P'},
  {'6','G','Q'},
  {'7','H','R'},
  {'8','I','S'},
  {'9','J','T'},
};
byte rowPins[ROWS] = {7,8,9,10,16,14,15,18,19,20}; //connect to the row pinouts of the keypad
byte colPins[COLS] = {4,5,6}; //connect to the column pinouts of the keypad
