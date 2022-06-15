MsgBox, cntrl + j aby włączyć skrypt
MsgBox, ppm/exit-(trayicon) aby wyjsc ze skryptu

; \/ ----------- \/
; zmienne // co ile ms ma pisać
timerms = 8500 ; discord antispam protection
; ile bedzie odstepu od entera
timerent = 30
; od jakiej liczby ma zaczynac (1,2,3) gdzie 1 do liczba startowa jak sie ustawi 38 to bedzie zaczynalo od 38 (38,39,40). Proboje ci to wytlumaczyc xD
st = 1
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
