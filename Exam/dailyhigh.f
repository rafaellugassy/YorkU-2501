      PROGRAM DAILYHIGH
      
      INTEGER :: N = 1
      INTEGER MONTH(12 * 31), DAY(12 * 31), TEMP(12 * 31)
      CHARACTER LINE*100
      
      OPEN(UNIT = 1, FILE = "dailyhigh.dat")
      OPEN(UNIT = 2, FILE = "hot.out")
      OPEN(UNIT = 3, FILE = "cold.out")
      OPEN(UNIT = 4, FILE = "dailyhigh.out")
      
      WRITE (2,*) "Unusually warm winter days"
      WRITE (3,*) "Unusually cold winter days"
      DO I = 1, 12 * 31
      	MONTH(I) = 0
      	DAY(I) = 0
      	TEMP(I) = 0
      END DO 
      
      DO WHILE (N == 1 .OR. TEMP(N - 1) /= 99)
      	READ(1,10) MONTH(N), DAY(N), TEMP(N)
 10   	FORMAT (I2I2I3)
      	PRINT *, MONTH(N) , " " , DAY(N) , " " , TEMP(N)
      	WRITE (4,*) MONTH(N) , " " , DAY(N) , " " , TEMP(N)
        N = N + 1
      END DO

			N = N - 1

! -------- Will print all values to the stdout that are special, but
! -------- writes only the hot to the hot file and cold to cold file     
 20   FORMAT (A9I2A7I3A1)
      DO I = 1, N
      	IF (TEMP(I) .GT. 10) THEN
      		IF (MONTH(I) == 12) THEN
      			PRINT 20, "December " , DAY(I) , " TEMP: " , TEMP(I) , "C"
      			WRITE (4,20) "December " , DAY(I) , " TEMP: " , TEMP(I) , "C"
      			WRITE (2,20) "December " , DAY(I) , " TEMP: " , TEMP(I) , "C"
      		ELSEIF (MONTH(I) == 1) THEN
      			PRINT 20, "January  " , DAY(I) , " TEMP: " , TEMP(I) , "C"
      			WRITE (4,20) "January  " , DAY(I) , " TEMP: " , TEMP(I) , "C"
      			WRITE (2,20) "January  " , DAY(I) , " TEMP: " , TEMP(I) , "C"
      		ELSEIF (MONTH(I) == 2) THEN
      			PRINT 20, "February " , DAY(I) , " TEMP: " , TEMP(I) , "C"
      			WRITE (4,20) "February " , DAY(I) , " TEMP: " , TEMP(I) , "C"
      			WRITE (2,20) "February " , DAY(I) , " TEMP: " , TEMP(I) , "C"
      		END IF
      	ELSEIF (TEMP(I) .LT. -25) THEN
      	IF (MONTH(I) == 12) THEN
      			PRINT 20, "December " , DAY(I) , " TEMP: " , TEMP(I) , "C"
      			WRITE (4,20) "December " , DAY(I) , " TEMP: " , TEMP(I) , "C"
      			WRITE (3,20) "December " , DAY(I) , " TEMP: " , TEMP(I) , "C"
      		ELSEIF (MONTH(I) == 1) THEN
      			PRINT 20, "January  " , DAY(I) , " TEMP: " , TEMP(I) , "C"
      			WRITE (4,20) "January  " , DAY(I) , " TEMP: " , TEMP(I) , "C"
      			WRITE (3,20) "January  " , DAY(I) , " TEMP: " , TEMP(I) , "C"
      		ELSEIF (MONTH(I) == 2) THEN
      			PRINT 20, "February " , DAY(I) , " TEMP: " , TEMP(I) , "C"
      			WRITE (4,20) "February " , DAY(I) , " TEMP: " , TEMP(I) , "C"
      			WRITE (3,20) "February " , DAY(I) , " TEMP: " , TEMP(I) , "C"
      		END IF
      	END IF
      END DO
      
      
      END PROGRAM
