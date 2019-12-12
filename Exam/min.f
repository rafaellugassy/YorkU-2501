      SUBROUTINE MINIMUM(N, A, VAL)
      	INTEGER N
      	INTEGER :: START = 1
      	REAL A(N), VAL
      	DO I = 1, N
      		IF (START == 1) THEN
      			VAL = A(I)
      			START = 0
      		ELSE
      			IF (VAL .GT. A(I)) THEN
      				VAL = A(I)
      			ENDIF
      		END IF
      	END DO
      	
      END SUBROUTINE MINIMUM
      
      PROGRAM MINI
      REAL NUM(100), OUTPUT
      INTEGER N
      OPEN(UNIT = 1, FILE = "min.out")
     
      PRINT *, "Input number (less than 100) of inputs"
      WRITE (1,*) "Input number (less than 100) of inputs"
      READ *, N
      
      PRINT *, "insert ", N, " inputs"
      WRITE (1,*) "insert ", N, " inputs"
      DO I = 1,N
      	READ *, NUM(I)
      	WRITE (1,*) NUM(I)
      END DO
      
      CALL MINIMUM(N,NUM,OUTPUT)
      
      PRINT *, "The minimum value is: " , OUTPUT
      WRITE (1,*) "The minimum value is: " , OUTPUT
      
      END PROGRAM
