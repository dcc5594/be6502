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
  lda #%11111111 ; Set all pins on port B to output
  sta DDRB

  lda #%11110000 ; Set top 4 pins on port A to output
  sta DDRA

  lda #%00111000 ; Set 8-bit mode; 2-line display; 5x8 font
  jsr lcd_instruction1

  lda #%00111000 ; Set 8-bit mode; 2-line display; 5x8 font
  jsr lcd_instruction2

  lda #%00001110 ; Display on; cursor on; blink off
  jsr lcd_instruction1

  lda #%00001110 ; Display on; cursor on; blink off
  jsr lcd_instruction2

  lda #%00000110 ; Increment and shift cursor; don't shift display
  jsr lcd_instruction1

  lda #%00000110 ; Increment and shift cursor; don't shift display
  jsr lcd_instruction2


loop:

  LDA #%00000001 ; CLEAR DISPLAY
  jsr lcd_instruction1

  lda #"S"                  ; line 1
  jsr print_char1

  lda #"c"
  jsr print_char1

  lda #"r"
  jsr print_char1

  lda #"e"
  jsr print_char1

  lda #"e"
  jsr print_char1

  lda #"n"
  jsr print_char1

  lda #"1"
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "                  ; line 20
  jsr print_char1

  lda #"L"                  ; line 21
  jsr print_char1

  lda #"i"
  jsr print_char1

  lda #"n"
  jsr print_char1

  lda #"e"
  jsr print_char1

  lda #"3"
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1             ; Line 40

  lda #"L"                    ; line 41
  jsr print_char1

  lda #"i"
  jsr print_char1

  lda #"n"
  jsr print_char1

  lda #"e"
  jsr print_char1

  lda #"2"
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #"L"                  ; line 61
  jsr print_char1

  lda #"i"
  jsr print_char1

  lda #"n"
  jsr print_char1

  lda #"e"
  jsr print_char1

  lda #"4"
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "
  jsr print_char1

  lda #" "                  ; line 80
  jsr print_char1


  LDA #%00000001 ; CLEAR DISPLAY
  jsr lcd_instruction2

  lda #"S"                  ; line 1
  jsr print_char2

  lda #"c"
  jsr print_char2

  lda #"r"
  jsr print_char2

  lda #"e"
  jsr print_char2

  lda #"e"
  jsr print_char2

  lda #"n"
  jsr print_char2

  lda #"2"
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "                  ; line 20
  jsr print_char2

  lda #"L"                  ; line 21
  jsr print_char2

  lda #"i"
  jsr print_char2

  lda #"n"
  jsr print_char2

  lda #"e"
  jsr print_char2

  lda #"3"
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2             ; Line 40

  lda #"L"                    ; line 41
  jsr print_char2

  lda #"i"
  jsr print_char2

  lda #"n"
  jsr print_char2

  lda #"e"
  jsr print_char2

  lda #"2"
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #"L"                  ; line 61
  jsr print_char2

  lda #"i"
  jsr print_char2

  lda #"n"
  jsr print_char2

  lda #"e"
  jsr print_char2

  lda #"4"
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "
  jsr print_char2

  lda #" "                  ; line 80
  jsr print_char2



  jmp loop

lcd_instruction1:
  sta PORTB
  lda #0         ; Clear RS/RW/E bits
  sta PORTA
  lda #E         ; Set E bit to send instruction
  sta PORTA
  lda #0         ; Clear RS/RW/E bits
  sta PORTA
  rts

lcd_instruction2:
    sta PORTB
    lda #0         ; Clear RS/RW/E bits
    sta PORTA
    lda #F         ; Set E bit to send instruction
    sta PORTA
    lda #0         ; Clear RS/RW/E bits
    sta PORTA
    rts

print_char1:
  sta PORTB
  lda #RS         ; Set RS; Clear RW/E bits
  sta PORTA
  lda #(RS | E)   ; Set E bit to send instruction
  sta PORTA
  lda #RS         ; Clear E bits
  sta PORTA
  rts

print_char2:
    sta PORTB
    lda #RS         ; Set RS; Clear RW/E bits
    sta PORTA
    lda #(RS | F)   ; Set E bit to send instruction
    sta PORTA
    lda #RS         ; Clear E bits
    sta PORTA
    rts

  .org $fffc
  .word reset
  .word $0000
