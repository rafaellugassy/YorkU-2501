      PROGRAM Q3
      
      REAL RATES(31), AVG
      
      OPEN (UNIT = 2, FILE = "q3.out")
      
      PRINT *, "Input rates please:"
      WRITE (2,*) "Input rates please:"
      
      READ *, (RATES(I), I=1, 31)
      DO I = 1, 31
      	WRITE (2,*) RATES(I)
      END DO
      
      DO I = 1, 31
      	AVG = AVG + RATES(I)
      	
      	IF (RATES(I) < 11 .OR. RATES(I) >= 40) THEN
      		PRINT *, "ID: ", I, " RATE: ", RATES(I)
      		WRITE (2,*) "ID: ", I, " RATE: ", RATES(I)
      	END IF
      	
      END DO
      
      AVG = AVG / 31.0
      PRINT *, "Average rate: ", AVG
      WRITE (2,*) "Average rate: ", AVG
      
      END PROGRAM
