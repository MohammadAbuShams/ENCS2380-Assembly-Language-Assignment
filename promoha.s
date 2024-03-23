    ; Mohammad Naeem Abu Shams.
   ; 1200549.
   ; ORGA Assignment.


    AREA RESET, DATA, READONLY
	EXPORT __Vectors
	
__Vectors	DCD 0x20001000
	
			DCD Reset_Handler
				
		ALIGN
	
	AREA mycode, CODE, READONLY
	ENTRY
	EXPORT Reset_Handler
Reset_Handler

       MOV R0, #10 ; Store 10 decimal to the register R0.
	   

SU1 SPACE 3 ; Define an variable called S1 with size equal 3 byte.
SU2 SPACE 3 ; Define a second variable called S2 with size equal 3 byte.
Re SPACE 10 ; Define a third variable called Result with size equal 10 byte.
  
	
      LDR R1, =Array ; To bring the address of the array and stored it into a register R1.
	  MOV R3, #0 ; Store 0 decimal to the register R3.
	 
Array DCB 34, 56, 27, 156, 200, 68, 128, 235, 17, 45 ; Define an array with size equal 10 byte.


Loop ; Loop to calculate the S1 of numbers in the array;
	   LDRB R2, [R1] ; To bring one byte from array and stored it into a register R2.
	   ADD R3, R3, R2 ; Add the numbers in register R2 and R3 then the S1 is in register R3.
	   ADD R1, #1 ; Store 1 decimal to the register R1.
	   
	   SUBS R0, R0, #1 ; Decrease the value of register R1 by one(1) and set the flags.
	   BNE Loop ; Keep looping if Z = 0;
	   
	   LDR R1, =S1 ; To bring the address of the S1 and stored it into a register R1.
	   STR R3, [R1] ; Stroe the value of R3 to S1.
	   
	   LDR R1, =Array ; To bring the address of the array and stored it into a register R1.
         MOV R0, #10 ; Store 10 decimal to the register R0.
	   MOV R4, #0 ;Store 0 decimal to the register R4.
	   
loop2 ; Loop to find the S1 of even numbers in the array. 
	   
	   LDRB R2, [R1] ; To bring one byte from array and stored it into a register R2.

	   MOVS R3, R2, LSL #31 ; Shift left register R2 by 31 bit, then set the flags. If Z=0, then the number is odd, else if the Z=1, then the number is even.
	   BNE Skip; If Z=0, branch ( Skip the add ).
	   ADD R4, R4, R2; Add the number of register R2 to the register R4, and the result in the register R4.
Skip
	   ADD R1, #1 ; Increment the register R1 by 1.
	   SUBS R0, R0, #1 ; Decrease the value of register R1 by one(1) and set the flags.

	   BNE loop2 ; Keep looping if Z = 0.
	   
	   LDR R1, =S2 ; To bring the address of the S2 and stored it into a register R1.
	   STR R4, [R1] ; Stroe the value of R4 to S2.
	   
	   LDR R1, =Array; To bring the address of the array and stored it into a register R1.
	   LDR R4, =Result ; To bring the address of the Result and stored it into a register R4.
	   MOV R0, #10 ; Store 10 decimal to the register R0.
	   
Loop3 ; Loop to find the largest power of two for each numbers of array.

	   LDRB R2, [R1]  ;To bring one byte from array and stored it into a register R2.
	   BL Pow ; Branch and link. 
	   STRB R7, [R4] ; Store one byte to the result arrray.
	   ADD R4, R4, #1 ; Add one to the register R4, and the result in the register R4.
	   
	   ADD R1, #1 ; Increment the register R1 by 1.
	   SUBS R0, R0, #1 ; Decrease the value of register R1 by one(1) and set the flags.
	   BNE Loop3  ; Keep looping if Z = 0.
	   
Pow ; Function to find the largest power of two.   
	   MOV R5, #-1 ; Store -1 decimal to the register R5.
Loop4 ; To find the number of zeros in the right.
	   ADD R5, R5, #1 ; Add one to the register R5, and the result in the register R5.
	   ANDS R6, R2,#0x1 ; And between the register R2 and 1 and save the result in R6, then set the flag.
	   MOV R2, R2, LSR #1 ; Shift left register R2 by 1 bit.
	   BEQ Loop4 ; Branch if Z=1; 
	   
	   MOV R7, #1 ; Store 1 decimal to the register R7.
	   MOV R7, R7, LSL R5 ; Logical shift register by R5.
	   
	   BX LR ; Return.
	   

	   
	END ; The end of programme.
		
	
	
	
	