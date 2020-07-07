PORTB = $6000
PORTA = $6001
DDRB = $6002
DDRA = $6003

E  = %10000000
RW = %01000000
RS = %00100000
F  = %00010000

  .org $8000

reset:
  ldx #$ff
  txs

loop:

  lda #%11111111 ; Set all pins on port B to output
  sta DDRB
  lda #%11110000 ; Set top 4 pins on port A to output
  sta DDRA

  lda #%00111000 ; Set 8-bit mode; 2-line display; 5x8 font
  jsr lcd_instruction
  lda #%00001110 ; Display on; cursor on; blink off
  jsr lcd_instruction
  lda #%00000110 ; Increment and shift cursor; don't shift display
  jsr lcd_instruction
  lda #$00000001 ; Clear display
  jsr lcd_instruction

  lda #%00111000 ; Set 8-bit mode; 2-line display; 5x8 font
  jsr lcd_instruction1
  lda #%00001110 ; Display on; cursor on; blink off
  jsr lcd_instruction1
  lda #%00000110 ; Increment and shift cursor; don't shift display
  jsr lcd_instruction1
  lda #$00000001 ; Clear display
  jsr lcd_instruction1


  ldx #0

print:
  lda message,x
  beq loop
  jsr print_char
  lda message1,x
  beq loop
  jsr print_char1
  inx
  jmp print


message: .asciiz "     Screen One        65c22 Via Pin 9          PA7             E=%100000000    "
message1: .asciiz "     Screen Two       65c22 Via Pin 6          PA4             E=%000100000    "

  lda #RW
  sta PORTA
  lda #%11111111  ; Port B is output
  sta DDRB
  pla
  rts

lcd_instruction:
  sta PORTB
  lda #0         ; Clear RS/RW/E bits
  sta PORTA
  lda #E         ; Set E bit to send instruction
  sta PORTA
  lda #0         ; Clear RS/RW/E bits
  sta PORTA
  rts

lcd_instruction1:
  sta PORTB
  lda #0         ; Clear RS/RW/E bits
  sta PORTA
  lda #F         ; Set E bit to send instruction
  sta PORTA
  lda #0         ; Clear RS/RW/E bits
  sta PORTA
  rts

print_char:
  sta PORTB
  lda #RS         ; Set RS; Clear RW/E bits
  sta PORTA
  lda #(RS | E)   ; Set E bit to send instruction
  sta PORTA
  lda #RS         ; Clear E bits
  sta PORTA
  rts

print_char1:
  sta PORTB
  lda #RS         ; Set RS; Clear RW/E bits
  sta PORTA
  lda #(RS | F)   ; Set E bit to send instruction
  sta PORTA
  lda #RS         ; Clear F bits
  sta PORTA
  rts



  .org $fffc
  .word reset
  .word $0000
