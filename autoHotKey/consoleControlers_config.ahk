;
; This is ment to be included in the findApps_m.ahk program
;
;
; The array will be ["P1","P2","P3","?"]
;
; P1
;   0 - Nothing
;   f - Call function
;   k - Keys Send, {LWin Down}{LShift Down}{S}{LShift Up}{LWin Up}
;   r - Run Program
;   s - Search For Application
;
; P2 - Dependant on P1
;   f - Function name
;   k - Key List
;   r - Full Path to program
;   s - Aplication Name Search String
;
; P3 - Dependant on P1
;   f - Parm for function
;   k - Ignored
;   r - Ignored ** change
;   s - Ignored
;
  
  buttonCommands[controlerLeftSide,1]  := ["s","Outlook",""]
	buttonCommands[controlerLeftSide,2]  := ["s","PDF",""]
	buttonCommands[controlerLeftSide,3]  := ["k","unknown",""]

	buttonCommands[controlerLeftSide,4]  := ["s","Access",""]
	buttonCommands[controlerLeftSide,5]  := ["s","Excel",""]
	buttonCommands[controlerLeftSide,6]  := ["s","Visio",""]
	buttonCommands[controlerLeftSide,7]  := ["s","Word",""]

	buttonCommands[controlerLeftSide,8]  := ["s","Manage notes",""]
	buttonCommands[controlerLeftSide,9]  := ["s","Wireshark",""]
	buttonCommands[controlerLeftSide,10] := ["x","",""]


	buttonCommands[controlerLeftSide,11] := ["s","DbSchema",""]
	buttonCommands[controlerLeftSide,12] := ["s","Remote Desktop Connection",""]
	buttonCommands[controlerLeftSide,13] := ["x","",""]

	buttonCommands[controlerLeftSide,14] := ["x","",""]
	buttonCommands[controlerLeftSide,15] := ["x","",""]
	buttonCommands[controlerLeftSide,16] := ["x","",""]
	buttonCommands[controlerLeftSide,17] := ["x","",""]

	buttonCommands[controlerLeftSide,18] := ["s","Label Editor",""]
	buttonCommands[controlerLeftSide,19] := ["s","Paint",""]
	buttonCommands[controlerLeftSide,20] := ["s","HeidiSQL",""]

;----------------------------------------------------------------

  buttonCommands[controlerRightSide,1]  := ["s","",""]
	buttonCommands[controlerRightSide,2]  := ["s","MetaView Explorer",""]
	buttonCommands[controlerRightSide,3]  := ["s","ZMS",""]
	
	buttonCommands[controlerRightSide,4]  := ["s","CMS",""]
	buttonCommands[controlerRightSide,5]  := ["s","XYplorer",""]
	buttonCommands[controlerRightSide,6]  := ["s","Postman",""]
	buttonCommands[controlerRightSide,7]  := ["s","Notepad",""]
	  
	buttonCommands[controlerRightSide,8]  := ["f","cf_LockWorkStation",""]
	buttonCommands[controlerRightSide,9]  := ["r","C:\Program Files (x86)\SpeedCrunch\SpeedCrunch.exe",""]
	buttonCommands[controlerRightSide,10] := ["k","{LWin Down}{LShift Down}{S}{LShift Up}{LWin Up}",""]
;	  %A_WinDir%\system32\SnippingTool.exe
	
	buttonCommands[controlerRightSide,11] := ["s","bohdi",""]
	buttonCommands[controlerRightSide,12] := ["x","",""]
	buttonCommands[controlerRightSide,13] := ["x","",""]
	  
	buttonCommands[controlerRightSide,14] := ["s","APmax",""]
	buttonCommands[controlerRightSide,15] := ["s","Pale Moon",""]
	buttonCommands[controlerRightSide,16] := ["s","UEStudio",""]
	buttonCommands[controlerRightSide,17] := ["s","Main CRT Sessions",""]

	buttonCommands[controlerRightSide,18] := ["k","{PrintScreen}",""]
	buttonCommands[controlerRightSide,19] := ["s","FileZilla",""]
	buttonCommands[controlerRightSide,20] := ["s","Mozilla",""]
	buttonCommands[controlerRightSide,201]:= ["s","zDeveloper",""]
	  
;----------------------------------------------------------------
;
; My Num Pad
;
;----------------------------------------------------------------

  buttonCommands[controlerNumPad,1]  := ["x","",""]
	buttonCommands[controlerNumPad,2]  := ["x","",""]
	buttonCommands[controlerNumPad,3]  := ["x","",""]
	buttonCommands[controlerNumPad,4]  := ["x","",""]

	buttonCommands[controlerNumPad,5]  := ["k","{Esc}",""]
	buttonCommands[controlerNumPad,6]  := ["k","{Tab}",""]
	buttonCommands[controlerNumPad,7]  := ["k","=",""]
	buttonCommands[controlerNumPad,8]  := ["k","{Shift down}{Tab}{Shift up}",""]

	buttonCommands[controlerNumPad,9]  := ["k","{Esc}",""]
	buttonCommands[controlerNumPad,10] := ["k","/",""]
	buttonCommands[controlerNumPad,11] := ["k","*",""]
	buttonCommands[controlerNumPad,12] := ["k","{Backspace}",""]

	buttonCommands[controlerNumPad,13] := ["k","7",""]
	buttonCommands[controlerNumPad,14] := ["k","8",""]
	buttonCommands[controlerNumPad,15] := ["k","9",""]
	buttonCommands[controlerNumPad,16] := ["k","-",""]

	buttonCommands[controlerNumPad,17] := ["k","4",""]
	buttonCommands[controlerNumPad,18] := ["k","5",""]
	buttonCommands[controlerNumPad,19] := ["k","6",""]
	buttonCommands[controlerNumPad,20] := ["k","{+}",""]

	buttonCommands[controlerNumPad,21] := ["k","1",""]
	buttonCommands[controlerNumPad,22] := ["k","2",""]
	buttonCommands[controlerNumPad,23] := ["k","3",""]
	buttonCommands[controlerNumPad,24] := ["k","{Enter}",""]

	buttonCommands[controlerNumPad,25] := ["k","00",""]
	buttonCommands[controlerNumPad,26] := ["k","0",""]
	buttonCommands[controlerNumPad,27] := ["k",".",""]
	buttonCommands[controlerNumPad,28] := ["k","000",""]

