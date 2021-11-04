; Botter v.1.0 by lemonek
; Basic msgboxy, opis programu i poradnik jak odpalic bota
MsgBox, cntrl + j aby odpalic bota
MsgBox, ppm/exit-(trayicon) aby wyjsc

; \/ ----------- \/
; zmienne // co ile ms ma pisać
timerms = 8500 ; discord antispam protection
; ile bedzie odstepu od entera
timerent = 30
; od jakiej liczby ma zaczynac
st = 148
; ile ma dodawac do liczby // deafult: `adder = 1` ; czyli dodaje co %timerms% do liczby 1
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