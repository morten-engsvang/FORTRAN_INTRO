PROGRAM integration
        USE integration_mod, ONLY : integrate
        IMPLICIT NONE
        INTEGER, PARAMETER :: dp = SELECTED_REAL_KIND(15,307)
        REAL(dp), PARAMETER :: pi = 3.1415926535897932
        REAL(dp), PARAMETER :: a = 0 ! Start of range
        REAL(dp), PARAMETER :: b = pi/2.0 ! End of range
        INTEGER :: m ! # of increments
        REAL(dp) :: value ! Value of the integral
        WRITE(*,*) a,b
        DO m = 1, 10000, 1
                WRITE(*,*) "value of m: ", m
                value = integrate(a,b,m)
                WRITE(*,*) "integral value of: ", value
        END DO
END PROGRAM integration