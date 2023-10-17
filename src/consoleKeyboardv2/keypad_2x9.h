  const byte ROWS = 9;
  const byte COLS = 2;

  char keys[ROWS][COLS] = {
    {'0','A'},
    {'1','B'},
    {'2','C'},
    {'3','D'},
    {'4','E'},
    {'5','F'},
    {'6','G'},
    {'7','H'},
    {'8','I'},
  };

  byte rowPins[ROWS] = {7,8,9,10,16,14,15,18,19}; //connect to the row pinouts of the keypad
  byte colPins[COLS] = {4,5}; //connect to the column pinouts of the keypad
