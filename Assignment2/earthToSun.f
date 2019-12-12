      PROGRAM EARTHTOSUN
      
      INTEGER :: DIST = 150000000, MINUTES, SECONDS
      REAL ELAPSED

!       TIME IN YEARS  (time = dist/speed)
      ELAPSED = DIST / (0.946 * 10.0 ** 13) 
!       TIME IN DAYS
      ELAPSED = ELAPSED * 365.25
!       TIME IN HOURS
      ELAPSED = ELAPSED * 24.0
!       TIME IN MINUTES
      ELAPSED = ELAPSED * 60.0
      
      MINUTES = ELAPSED
      SECONDS = (ELAPSED - MINUTES) * 60.0
      
      PRINT *, "It takes ", MINUTES, " minutes and,",
     $ SECONDS, " seconds for light to travel to",
     $ " earth from the sun"
      
      END PROGRAM
