const byte ROWS = 4;
const byte COLS = 7;
char keys[ROWS][COLS] = {
  {'0','4','8','C','G','K','O'},
  {'1','5','9','D','H','L','P'},
  {'2','6','A','E','I','M','Q'},
  {'3','7','B','F','J','N','R'},
};
byte rowPins[ROWS] = {4,5,6,7}; //connect to the row pinouts of the keypad
byte colPins[COLS] = {10,16,14,15,18,19,20}; //connect to the column pinouts of the keypad
