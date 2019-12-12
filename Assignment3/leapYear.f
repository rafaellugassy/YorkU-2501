      PROGRAM LEAPYEAR
      
      INTEGER YEAR
      
      OPEN (UNIT = 1, FILE = "leapYear.out")
      
      WRITE (1,*) "Please input the year"
      PRINT *, "Please input the year"
      READ *, YEAR

      DO WHILE (YEAR /= 9999)
      	IF ((YEAR / 4)*4 == YEAR .AND. 
     >(YEAR / 100)*100 /= YEAR 
     >.OR. (YEAR / 400)*400 == YEAR) THEN
      		WRITE (1,*) YEAR, " is a leap year"
      		PRINT *, YEAR, " is a leap year"
      	ELSE
      		WRITE (1,*) YEAR, " is not a leap year"
      		PRINT *, YEAR, " is not a leap year"
      	ENDIF 
      
      	WRITE (1,*) "Please input the year"
      	PRINT *, "Please input the year"
      	READ *, YEAR
      ENDDO
      
      
      WRITE (1,*) "YEAR = 9999. closing..."
      PRINT *, "YEAR = 9999. closing..."
      
      END PROGRAM
