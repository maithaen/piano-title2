
;~ vertion 1.0.0

;~ key for start clack "S" for start and esc for exit
HotKeySet("{ESC}",exit)
HotKeySet("s",start)



;~ set clent 

Opt("MouseCoordMode", 2)
Opt("PixelCoordMode", 2)
;~ class Func
Func start()
    
    EndFunc
Func exit()
    Sleep(100)
    Exit
    EndFunc
Func open()
        WinActivate("Android 4.4.2")
    EndFunc
    