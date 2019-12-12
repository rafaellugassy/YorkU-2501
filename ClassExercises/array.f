      PROGRAM ARRAY
      
      INTEGER N, ARR(100)
      OPEN (UNIT = 2, FILE = "data.in")
      
      READ (2,*) N
      READ (2, 100) (ARR(I), I = 1, N)
 100  FORMAT ((20I3))
 
      DO I = 1, N 
      	PRINT *, ARR(I)
      END DO
      
      END PROGRAM
