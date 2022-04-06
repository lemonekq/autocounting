; English version of counting macro
MsgBox, cntrl + j aby odpalic bota
MsgBox, ppm/exit-(trayicon) aby wyjsc

; \/ ----------- \/
; type with delay
timerms = 8500 ; 8500 - discord antispam protection
; enter ms - deafult 30
timerent = 30
; starting number (if you will put the number '28' it will count from this number (28,29,30))
st = 1
; how much it will add to the starting number
adder = 1
; /\ ----------- /\

^j::
    Loop {
	    SendRaw %st%
		st += %adder%
		Sleep, %timerent%
		Send {Enter}
		Sleep, %timerms%
	}

; end
