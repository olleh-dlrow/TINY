* TINY Compilation to TM Code
* File: SAMPLE.tm
* Standard prelude:
  0:     LD  6,0(0) 	load maxaddress from location 0
  1:     ST  0,0(0) 	clear location 0
* End of standard prelude.
* -> declaration
  2:     ST  0,0(5) 	declaration: initialize variable
* <- declaration
* -> declaration
  3:     ST  0,1(5) 	declaration: initialize variable
* <- declaration
* -> declaration
  4:     ST  0,2(5) 	declaration: initialize variable
* <- declaration
* -> declaration
  5:     ST  0,3(5) 	declaration: initialize variable
* <- declaration
  6:     IN  0,0,0 	read integer value
  7:     ST  0,0(5) 	read: store value
* -> assign
* -> Op
* -> Op
* -> Const
  8:    LDC  0,1(0) 	load const
* <- Const
  9:     ST  0,0(6) 	op: push left
* -> Op
* -> Const
 10:    LDC  0,2(0) 	load const
* <- Const
 11:     ST  0,-1(6) 	op: push left
* -> Const
 12:    LDC  0,3(0) 	load const
* <- Const
 13:     LD  1,-1(6) 	op: load left
 14:    MUL  0,1,0 	op *
* <- Op
 15:     LD  1,0(6) 	op: load left
 16:    ADD  0,1,0 	op +
* <- Op
 17:     ST  0,0(6) 	op: push left
* -> Const
 18:    LDC  0,1(0) 	load const
* <- Const
 19:     LD  1,0(6) 	op: load left
 20:    ADD  0,1,0 	op +
* <- Op
 21:     ST  0,1(5) 	assign: store value
* <- assign
* -> assign
* -> Op
* -> Const
 22:    LDC  0,48(0) 	load const
* <- Const
 23:     ST  0,0(6) 	op: push left
* -> Const
 24:    LDC  0,50(0) 	load const
* <- Const
 25:     LD  1,0(6) 	op: load left
 26:    ADD  0,1,0 	op +
* <- Op
 27:     ST  0,3(5) 	assign: store value
* <- assign
* -> if
* -> Op
* -> Const
 28:    LDC  0,0(0) 	load const
* <- Const
 29:     ST  0,0(6) 	op: push left
* -> Id
 30:     LD  0,0(5) 	load id value
* <- Id
 31:     LD  1,0(6) 	op: load left
 32:    SUB  0,1,0 	op <
 33:    JLT  0,2(7) 	br if true
 34:    LDC  0,0(0) 	false case
 35:    LDA  7,1(7) 	unconditional jmp
 36:    LDC  0,1(0) 	true case
* <- Op
* if: jump to else belongs here
* -> assign
* -> Const
 38:    LDC  0,1(0) 	load const
* <- Const
 39:     ST  0,2(5) 	assign: store value
* <- assign
* -> repeat
* repeat: jump after body comes back here
* -> assign
* -> Op
* -> Id
 40:     LD  0,2(5) 	load id value
* <- Id
 41:     ST  0,0(6) 	op: push left
* -> Id
 42:     LD  0,0(5) 	load id value
* <- Id
 43:     LD  1,0(6) 	op: load left
 44:    MUL  0,1,0 	op *
* <- Op
 45:     ST  0,2(5) 	assign: store value
* <- assign
* -> assign
* -> Op
* -> Id
 46:     LD  0,0(5) 	load id value
* <- Id
 47:     ST  0,0(6) 	op: push left
* -> Const
 48:    LDC  0,1(0) 	load const
* <- Const
 49:     LD  1,0(6) 	op: load left
 50:    SUB  0,1,0 	op -
* <- Op
 51:     ST  0,0(5) 	assign: store value
* <- assign
* -> Op
* -> Id
 52:     LD  0,0(5) 	load id value
* <- Id
 53:     ST  0,0(6) 	op: push left
* -> Const
 54:    LDC  0,0(0) 	load const
* <- Const
 55:     LD  1,0(6) 	op: load left
 56:    SUB  0,1,0 	op ==
 57:    JEQ  0,2(7) 	br if true
 58:    LDC  0,0(0) 	false case
 59:    LDA  7,1(7) 	unconditional jmp
 60:    LDC  0,1(0) 	true case
* <- Op
 61:    JEQ  0,-22(7) 	repeat: jmp back to body
* <- repeat
* -> Id
 62:     LD  0,2(5) 	load id value
* <- Id
 63:    OUT  0,0,0 	write ac
* -> Id
 64:     LD  0,1(5) 	load id value
* <- Id
 65:    OUT  0,0,0 	write ac
* -> Id
 66:     LD  0,3(5) 	load id value
* <- Id
 67:    OUT  0,0,0 	write ac
* if: jump to end belongs here
 37:    JEQ  0,31(7) 	if: jmp to else
 68:    LDA  7,0(7) 	jmp to end
* <- if
* End of execution.
 69:   HALT  0,0,0 	
