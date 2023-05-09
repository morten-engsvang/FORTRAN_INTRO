MODULE integration_mod
    IMPLICIT NONE
    INTEGER, PARAMETER :: dp = SELECTED_REAL_KIND(15,307)
CONTAINS
    FUNCTION integrate(a,b,m) RESULT(return)
        REAL(dp), PARAMETER :: a, b ! Start and end of range
        REAL(dp) :: c 
        REAL(dp) :: pos ! Current position
        INTEGER :: m ! # of increments
        INTEGER :: i 
        REAL(dp) :: h = (b-a)/m !Increment
        REAL(dp) :: return
        pos = a
        DO i = 0, m, 1
            
        END DO
    END FUNCTION integrate
END MODULE integration_mod