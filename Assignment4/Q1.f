      PROGRAM Q1
      
      INTEGER N, R, A(3,4)
      N = 3
      
      OPEN (UNIT = 1, FILE = "Q1.out")
      
!      INTEGER A(N,N + 1)
 
      PRINT *, "Please input values"
      WRITE (1,*) "Please input values"
 
      READ *, ((A(I,J), J = 1,N+1), I = 1, N)
      
      DO I=1,N
      	PRINT *, (A(I,J), J = 1,N+1)
      	WRITE (1,*) (A(I,J), J = 1,N+1)
      END DO
      
      DO R = 1, N-1
      	DO I = R + 1, N
      		DO J = R + 1, N + 1
      			A(I,J) = A(I,J)-A(I,R) * A(R,J)/A(R,R)
      		END DO
      	END DO
      END DO
      
      DO I=1,N
      	PRINT *, (A(I,J), J = 1,N+1)
      	WRITE (1,*) (A(I,J), J = 1,N+1)
      END DO
      
      END PROGRAM
