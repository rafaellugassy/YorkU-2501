      SUBROUTINE AVG (N,A,VAL)
      	INTEGER N
      	REAL :: SUM = 0
        REAL A(N), VAL
      	DO I=1,N
      		SUM = SUM + A(I)
      	ENDDO
      	VAL = SUM / N
      END SUBROUTINE AVG


      PROGRAM AVERAGE
      
      REAL NUM(100), OUTPUT
      INTEGER N
      OPEN (UNIT = 1, FILE = "averageSub.out")
      
      WRITE (1,*) "Insert number of inputs"
      PRINT *, "Insert number of inputs"
      READ *, N
      WRITE (1,*) N
      IF (N > 100) THEN
      	WRITE (1,*) "N > 100. closing..."
      	PRINT *, "N > 100. closing..."
      ELSE
      	WRITE (1,*) "Insert ", N , " inputs"
      	PRINT *, "Insert ", N , " inputs"
      	READ *, (NUM(I),I=1,N)
      	CALL AVG(N,NUM,OUTPUT)
        DO I=1,N
        	WRITE (1,*) NUM(I)
        ENDDO
      	WRITE (1,*) "The average is: ", OUTPUT
      	PRINT *, "The average is: ", OUTPUT
      ENDIF
      
      END PROGRAM
      
