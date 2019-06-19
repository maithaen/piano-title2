
;~ vertion 1.0.0

;~ key for start   

HotKeySet("{ESC}","_Exit") ;~Click esc for exit
HotKeySet("{s}","_Start")  ;~Click s for start
HotKeySet("{p}","_StopPlay") ;~Click p to stop



;~ set clent 

Opt("MouseCoordMode", 2)
Opt("PixelCoordMode", 2)
;~ my int and string
$sl = 10
$x = 30
$y = 50
$Nox = "Android 4.4.2"
;~ class Func
While 1
    Sleep(1000)
    WEnd
; this is main 
Func _Start()
    _ClickBoxSart()
    If Not @error Then
        While 1
        _ClickBoxlong1()
        Sleep($sl)
        _ClickBoxlong2()
        Sleep($sl)
        _ClickBoxshort()
        WEnd 
     EndIf
    
     EndFunc
 
 Func _ClickBoxSart()
    WinActivate($Nox)
    $pos =  PixelSearch(5,368,364,517,0x369FC6,5,1,$Nox)
    If Not @error Then
    ControlClick($Nox,"","","left",1,$pos[0]+$x, $pos[1]+$y)
    ;~  MouseMove ( $pos[0]+$x, $pos[1]+$y ,5 )
     EndIf
    EndFunc
Func _ClickBoxlong1()
    $pos =  PixelSearch(5,368,364,517,0x000102,5,1,$Nox)
    If Not @error Then
     ControlClick($Nox,"","","left",1,$pos[0]+$x, $pos[1]+$y)
     EndIf
    EndFunc
Func _ClickBoxlong2()
    $pos =  PixelSearch(5,368,364,517,0x000203,5,1,$Nox)
    If Not @error Then
     ControlClick($Nox,"","","left",1,$pos[0]+$x, $pos[1]+$y)
     EndIf
    EndFunc
Func _ClickBoxshort()
    $pos =  PixelSearch(5,368,364,517,0x000000,5,1,$Nox)
    If Not @error Then
     ControlClick($Nox,"","","left",1,$pos[0]+$x, $pos[1]+$y)
     EndIf
    EndFunc

Func _StopPlay()
    Sleep(100)
    ControlClick("รูปแบบ","","","left",1,22,586)
    EndFunc

Func _Exit()
    sleep(100)
    Exit
    EndFunc



    