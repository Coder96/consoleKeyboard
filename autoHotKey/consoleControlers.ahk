#NoEnv  			; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force 		; Skips the dialog box and replaces the old instance automatically, which is similar in effect to the Reload command.
#Warn	  			; Enable warnings to assist with detecting common errors.
;#ErrorStdOut
SendMode Input  		; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%	; Ensures a consistent starting directory.
;
;	# Win
;	! Alt	
;	^	Control
;	+ Shift
; & An ampersand may be used between any two keys or mouse buttons to combine them into a custom hotkey.
;
	global buttonCommands := []
;
  global controlerLeftSide  := 1
  global controlerRightSide := 2
  global controlerNumPad    := 3
;
  #Include %A_ScriptDir%\consoleControlers_config.ahk

  iconBase = %A_ScriptDir%\key_h.ico
  iconSearch = %A_ScriptDir%\key_h_w.ico

;  ICON[iconBase]		; Changes a compiled script's icon (.exe) when complied

  iconChange(iconBase)
;
; One line for each controler. Up to 16.
;
  setupButtons(controlerLeftSide , "LeftSide")
  setupButtons(controlerRightSide, "RightSide")
  setupButtons(controlerNumPad   , "NumPad")
;
;
;
  #Include %A_ScriptDir%\consoleControlers_controlerProcessesRightSide.ahk
  #Include %A_ScriptDir%\consoleControlers_controlerProcessesLeftSide.ahk
  #Include %A_ScriptDir%\consoleControlers_controlerProcessesNumPad.ahk
  #Include %A_ScriptDir%\consoleControlers_keyFunctions.ahk

;***************************************************************************************
;
; Bring Window to front
;
findWindow(iSearch){
	if(iSearch != A_Space) {
		SetTitleMatchMode 2
		WinGet, id, list, %iSearch%
		Loop, %id%{
		    this_id := id%A_Index%
		    WinActivate, ahk_id %this_id%
		}
	}
	return
}
;***************************************************************************************
;
;Changes menu tray icon 
;
iconChange(iIcon){
	
	IfExist, %iIcon%
		Menu, Tray, Icon, %iIcon%
	;
	return
}
;***************************************************************************************
;
; Sets up all the events for the buttons
;
setupButtons(iControlerNumber, iName){
	loop 32 {
		Hotkey, %iControlerNumber%Joy%A_Index%, my%iName%Joy%A_Index%, on
	}
}
;***************************************************************************************
;
; Finds the window by the window title text
;
searchWindowTitle(iFindText){
	
	global iconBase
	global iconSearch
	global buttonAppNames

	iconChange(iconSearch) ; Change icon to show key has been pressed.
;	msgbox % iControler
;	msgbox % iButton
; msgbox % buttonAppNames[iControler,iButton][1]

	if(iFindText != ""){
	  findWindow(iFindText)
  }
  sleep 50
  iconChange(iconBase)
	return
}
;***************************************************************************************
;
; Function called when any controler button presses
;
processButton(iControler, iButton){
;  msgbox "Controler:" . %iControler% . " Button:" . %iButton%
  wCommand := % buttonCommands[iControler,iButton][1] ; Find What to do
  
  Switch wCommand{
  Case "0":           ;Do nothing
      
  Case "f":           ; Call function
    wFunctionName := % buttonCommands[iControler,iButton][2]
    wFunctionParm := % buttonCommands[iControler,iButton][3]
    fn := Func(wFunctionName).Bind(wFunctionParm)
    fn.Call(1)
  Case "k":           ; Send Keys
    wKeys := % buttonCommands[iControler,iButton][2]
;    msgbox % wKeys
    Send % wKeys
  Case "r":
    wProgramName := % buttonCommands[iControler,iButton][2]
;    wProgramParm := % buttonCommands[iControler,iButton][3]
    Run % wProgramName
  Case "s":           ; App Name Search
    wText := % buttonCommands[iControler,iButton][2]
    searchWindowTitle(wText)
  }
}
