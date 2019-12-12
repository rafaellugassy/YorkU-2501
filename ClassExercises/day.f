      PROGRAM DAYREAD
      CHARACTER*3 DAY
      OPEN (UNIT=2, FILE = 'day.out')
      
      PRINT *, "ENTER A DAY (Mon, Tue, ETC...)"
      WRITE (2,*) "ENTER A DAY (Mon, Tue, ETC...)"
      READ *, DAY
      WRITE (2,*) "DAY = " , DAY
      IF (DAY == "Mon"
     $ .OR. DAY == "Tue"
     $ .OR. DAY == "Wed"
     $ .OR. DAY == "Thu"
     $ .OR. DAY == "Fri") THEN
      	PRINT *, "GO TO WORK."
      	WRITE (2,*) "GO TO WORK."
      ELSE IF (DAY == "Sat") THEN
      	PRINT *, "GO TO HOCKEY."
      	WRITE (2,*) "GO TO HOCKEY."
      ELSE IF (DAY == "Sun") THEN
      	PRINT *, "GO SKIING."
      	WRITE (2,*) "GO SKIING."
      ELSE
      	PRINT *, "WRONG INPUT."
      	WRITE (2,*) "WRONG INPUT."
      END IF
      
      END PROGRAM
