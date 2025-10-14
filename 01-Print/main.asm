vblank equ $0040
wTileMap equ $c3a0

SECTION "PrintPipe", ROM0
load "", wramx[$da00]

.print:
  ld hl, [wTileMap]
  call vblank
  ld (hl), $7c

.loop:
  call .print
