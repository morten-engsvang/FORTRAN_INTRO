MODULE integration_mod
    IMPLICIT NONE
    INTEGER, PARAMETER :: dp = SELECTED_REAL_KIND(15,307)
CONTAINS
    FUNCTION integrate(a,b,m) RESULT(c)
        IMPLICIT NONE
        REAL(dp) :: a,b ! Start and end of range
        INTEGER :: m ! # of increments
        INTEGER :: i 
        REAL(dp) :: h !Increment
        REAL(dp) :: c
        c = 0
        h = (b-a)/m
        WRITE(*,*) "increment length: ", h
        DO i = 1, m, 1
            c = c + COS(a+(i-0.5)*h)*h
        END DO
    END FUNCTION integrate
END MODULE integration_mod