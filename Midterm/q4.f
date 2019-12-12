      PROGRAM Q4
      
      REAL RATES(31), AVG, STDV
      
      OPEN (UNIT = 2, FILE = "q4.out")
      
      PRINT *, "Input rates please:"
      WRITE (2,*) "Input rates please:"
      
      READ *, (RATES(I), I=1, 31)
      DO I = 1, 31
      	WRITE (2,*) RATES(I)
      END DO
      
      DO I = 1, 31
      	AVG = AVG + RATES(I)
      END DO
      
      AVG = AVG / 31.0
      PRINT *, "Average rate: ", AVG
      WRITE (2,*) "Average rate: ", AVG
      
      DO I = 1, 31
      	STDV = STDV + ((RATES(I) - AVG) ** 2)
      END DO
      
      STDV = (STDV / 31.0) ** 0.5
      PRINT *, "Standard Deviation: ", STDV
      WRITE (2,*) "Standard Deviation: ", STDV
      
      END PROGRAM
