      PROGRAM DAILYHIGH
      
      INTEGER :: N = 1, SZ = 12 * 31
      INTEGER MONTH(SZ), DAY(SZ), TEMP(SZ)
      
      OPEN(UNIT = 1, FILE = "dailyhigh.dat")
      OPEN(UNIT = 2, FILE = "dailyhigh.out")
      
      DO I = 1, SZ
      	MONTH(I) = 0
      	DAY(I) = 0
      	TEMP(I) = 0
      END DO 
      
      DO WHILE (1==1)
      	READ(1,10,END = 100) MONTH(N)
      	READ(1,10) DAY(N)
      	READ(1,20) TEMP(N)
 10   	FORMAT (2I)
 20     FORMAT (3I)
      	PRINT *, MONTH + " " + DAY + " " + TEMP
      	WRITE (2,*)  MONTH + " " + DAY + " " + TEMP
        N = N + 1
      END DO
 100  CONTINUE
      
      SZ = N - 1
      
      DO I = 1, SZ
      	IF (TEMP(I) .GT. 10 .OR. TEMP(I) .LT. -25)
      		IF (MONTH(I) == 12) THEN
      			PRINT *, "December " + DAY(I) + " TEMP: " + TEMP(I) + "C"
      			WRITE (2,*) "December " + DAY(I) + " TEMP: " + TEMP(I) + "C"
      		ELSEIF (MONTH(I) == 1) THEN
      			PRINT *, "January " + DAY(I) + " TEMP: " + TEMP(I) + "C"
      			WRITE (2,*) "January " + DAY(I) + " TEMP: " + TEMP(I) + "C"
      		ELSEIF (MONTH(I) == 2) THEN
      			PRINT *, "February " + DAY(I) + " TEMP: " + TEMP(I) + "C"
      			WRITE (2,*) "January " + DAY(I) + " TEMP: " + TEMP(I) + "C"
      		END IF
      	END IF
      END DO
      
      
      END PROGRAM
