      PROGRAM LOWTEMP
      INTEGER TEMP(4,7)
      INTEGER LOW
      OPEN (UNIT = 1, FILE = "lowTemp.out")
      WRITE (1,*) "Please input the weather for Feb (4x7)"
      PRINT *, "Please input the weather for Feb (4x7)"
      READ *, ((TEMP(I,J),J=1,7),I=1,4)

      LOW = TEMP(1,1)
      DO I = 1,4
      	DO J = 1,7
      		WRITE (1,*) TEMP (I,J)
      		IF (LOW .GT. TEMP(I,J)) THEN
      			LOW = TEMP(I,J)
      		ENDIF
      	ENDDO
      ENDDO
      
      WRITE (1,*) "The lowest temperature is: ", LOW
      PRINT *, "The lowest temperature is: ", LOW
      
      END PROGRAM
