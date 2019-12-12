      PROGRAM AVMARK
      REAL AVRAGE
      INTEGER N, MARK(100), SUM
      OPEN(UNIT=1, FILE = 'marks.dat')
      OPEN(UNIT=2, FILE = 'marks.out')
      READ(1,100) N
 100  FORMAT (I3)
      READ (1,110) (MARK(I), I=1,N)
 110  FORMAT ((20I4))
      SUM=0
      DO I=0,N
      	SUM = SUM + MARK(I)
      ENDDO
      AVRAGE=(SUM*1.0)/N
      WRITE (2,120) 'MARKS = ' (MARKS(I), I=1, N)
 120  FORMAT (A8/(20I4))
      WRITE (2,130) 'AVERAGE = ', AVRAGE
 130  FORMAT (A10,E10.1)
      END PROGRAM
