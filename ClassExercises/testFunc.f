      RECURSIVE FUNCTION FOO (N) RESULT (VAL)
      	INTEGER N, VAL
      	IF (N <= 1) THEN
      		VAL = 1
      	ELSE
      		VAL = N * FOO(N-1)
      	ENDIF
      END FUNCTION FOO


      PROGRAM TESTFUNC
      
      CALL SUB
      
      END PROGRAM
      
      SUBROUTINE SUB 
      
      INTEGER :: FOO, A
      READ *, A
      PRINT *, FOO(A)
      
      END SUBROUTINE SUB
