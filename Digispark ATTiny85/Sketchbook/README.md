## Pulled from various GitHub repo
##Compiling all will take some time

![alt text](https://cdn.instructables.com/FKP/MAA2/HH2VJNW1/FKPMAA2HH2VJNW1.MEDIUM.jpg "The DigiSpark")

# DigiSpark-Scripts
This is a set of hand-written DigiSpark sketches for the Arduino IDE that utilize the DigiKeyboard.h library making the DigiSpark to act as a keyboard and execute a variety of actions. If you have found a USB Rubber Ducky scipt that you want to convert to a DigiSpark sketch, you can always use digiQuack, a tool which can be found in my repositories.

# Instructions
Configure the Arduino IDE for the DigiSpark using: https://digistump.com/wiki/digispark/tutorials/connecting or Seytonic's tutorial: https://youtu.be/fGmGBa-4cYQ. Then download one of scripts (sketches), open them with Arduino IDE, modify them if needed and upload them to the DigiSpark.

# Script Descriptions
>RickRoll_Update : Plays Never Gonna Give you up while performing a fake windows update.

>WallpaperChanger : Downloads and applies a wallpaper via powershell.

>Wallpaper_Prank : Takes a screenshot of the desktop, sets it as the wallpaper, hides desktop icons.

>Talker : Opens up powershell and speaks out a message.

>PowerShell Script Executer : Downloads and runs a powershell script.

>WiFi_Profile_Grabber: Using cmd, extracts wifi profiles and saves the csv to the usb mounted on d:\

>WiFi_Profile_Mailer : Writes the wireless network credentials to a csv file and emails it.

>Fork_Bomb : Opens up an obfuscated windows terminal and makes it multiply itself uncontrolably causing the machine to either lock or crash.

>Rapid_Shell : Seamlessly executes metasploit payloads through powershell.

>Reverse_Shell : Opens a reverse shell in 3 seconds.

>Window_Jammer : Spams ALT + F4 and CTRL + W key combos to force close all active windows.

# See the scripts in action

Click the gifs to see the full video

[![Wifi Stealer](https://j.gifs.com/N9KP5v.gif)](https://www.youtube.com/watch?v=b5E0u4qNH4s)

[![Wallpaper Prank](https://j.gifs.com/32r7ER.gif)](https://www.youtube.com/watch?v=yHPRZnpxvks)

# Credits, contributors and resources:

-samratashok for the Nishang reverse shell used in Reverse_Shell.

-nassimosaz for the Rapid_Shell script.

-p0wc0w for the original WiFi Grabber and Mailer Scripts.

-BlackBoot for the original fork bomb.

-hak5darren for the USB Rubber Ducky Documentation: https://github.com/hak5darren/USB-Rubber-Ducky/wiki/Duckyscript

-Digistump for the DigiSpark and their documentation: https://github.com/digistump/DigisparkArduinoIntegration/blob/master/libraries/DigisparkKeyboard/DigiKeyboard.h

-usb.org for the USB Usage IDs on page 53: http://www.usb.org/developers/hidpage/Hut1_12v2.pdf

<p align="center">
<img src="https://i.ibb.co/jZ2wvX0/NEWEV-AT.png" width="172" height="123">
</p>

# DigiSpark Attiny85 poor man's RubberDucky
For people who can't buy or are too cheap to buy RubberDucky, DigiSpark Attiny85 is the solution to their problems. Because it's possible to use it as HID thanks to "DigiKeyboard.h" it can be use as keyboard to send keystrokes to computer which can be use for pranking your people to creating a backdoor in target system.

## What's here?
I have created this repo for sharing my payloads for DigiSpark Attiny85. It's my first time programming any device and so far no fires. All the payloads are tested on Attiny85 and created on Arduino IDE.

## Getting Started
For people like me who are new to this i would suggest visiting [Maker.pro](https://maker.pro/arduino/projects/how-to-build-a-rubber-ducky-usb-with-arduino-using-a-digispark-module) for instruction on setting up development environment for Attiny85.

## Payloads
Following is the list of payloads i have worked on so far

>Wi-Fi password stealer: Grabs Windows saved Wi-Fi passwords and send them to your remote web server

>Windows Crasher: Various payloads for crashing windows

>UAC Bypass: Different methods to bypass windows UAC

>BackDoor: Creates backdoor for later access

>KeyLogger: For logging and sending typed keys

>Windows Phisher: Phisher for windows credentials

>Sam Dumper: Dump windows password files (SAM) and send them to remote location

## DISCLAIMER
All the software/scripts/applications/things in this repository are provided as is, without warranty of any kind. Use of these software/scripts/applications/things is entirely at your own risk. Creator of these softwares/scripts/applications/things is not responsible for any direct or indirect damage to your own or defiantly someone else's property resulting from the use of these software/scripts/applications/things.
