      PROGRAM LOOPFILE
      
      CHARACTER*20 FNAME, TASK
      CHARACTER*100 C
      
      PRINT *, "INPUT FILE NAME: "
      READ *, FNAME
      
      PRINT *, "INPUT COPY/CHANGE"
      READ *, TASK
      
      OPEN (UNIT = 2, FILE = FNAME)
      OPEN (UNIT = 3, FILE = "loopfile.out")
      
      IF (TASK == "copy") THEN
      	
      	DO WHILE (1==1)
      		READ (2,'(A)',END = 500) C
      		WRITE (3,'(A)') C
      		PRINT *, C
      	END DO
 500   	CONTINUE
      WRITE (3, *) "END OF FILE."
      END IF
      
      
      
      END PROGRAM
