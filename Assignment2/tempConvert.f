      PROGRAM TEMPCONVERT
      
      REAL DEGF, DEGC
      
      PRINT *, "Please input degrees in Fahrenheit."
      READ *, DEGF
      
      DEGC = (DEGF - 32.0) * (5.0/9.0)
      
      PRINT *, "Degrees Fahrenheit: " , DEGF,
     >"Degrees Celcius: " , DEGC
      
      END PROGRAM
