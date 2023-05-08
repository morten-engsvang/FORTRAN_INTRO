PROGRAM c_to_f
        IMPLICIT NONE
        INTEGER, PARAMETER :: dp = SELECTED_REAL_KIND(15,307)
        REAL(dp) :: c, f
        PRINT *, "Enter the temperature in Celsius:"
        READ *, c
        f = 9.0/5.0*c+32
        PRINT *, "The temperature in Fahrenheit is: ", f
END PROGRAM c_to_f
