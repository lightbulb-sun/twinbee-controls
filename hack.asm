!ADDR_MASK_BUTTON_JUMP   = $e0
!ADDR_MASK_BUTTON_LASER  = $e4
!ADDR_MASK_BUTTON_ATTACK = $e8
!ADDR_MASK_BUTTON_HOLD   = $ec
!ADDR_MASK_BUTTON_LEFT   = $f0
!ADDR_MASK_BUTTON_RIGHT  = $f4

!TILE_A     = $086e
!TILE_SPACE = $08a5
!TILE_DASH  = $08b5

lorom

; disable looking left
org $8296b9
        bra     looking_left_cont
org $8296c1
looking_left_cont:

; disable looking right
org $8296c3
        bra     looking_right_cont
org $8296c9
looking_right_cont:

; turn look-LEFT button into PUNCH
org $82a3a7
        and     !ADDR_MASK_BUTTON_LEFT, x

; turn look-RIGHT button into ROCKET
org $82fa85
        and     !ADDR_MASK_BUTTON_RIGHT, x

; fix options menu
; turn LEFT into PUNCH
org $879c88
        dw      !TILE_A+'P'-'A'
        dw      !TILE_A+'U'-'A'
        dw      !TILE_A+'N'-'A'
        dw      !TILE_A+'C'-'A'
        dw      !TILE_A+'H'-'A'

; turn RIGHT into ROCKET
org $879c94
        dw      !TILE_A+'R'-'A'
        dw      !TILE_A+'O'-'A'
        dw      !TILE_A+'C'-'A'
        dw      !TILE_A+'K'-'A'
        dw      !TILE_A+'E'-'A'
        dw      !TILE_A+'T'-'A'
