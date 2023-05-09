PROGRAM integration
        USE integration_mod, ONLY : integrate
        IMPLICIT NONE
        INTEGER, PARAMETER :: dp = SELECTED_REAL_KIND(15,307)
        REAL(dp), PARAMETER :: pi = 3.1415926535897932
        REAL(dp), PARAMETER :: a = 0 ! Start of range
        REAL(dp), PARAMETER :: b = pi/2.0 ! End of range
        INTEGER :: m ! # of increments
        REAL(dp) :: value ! Value of the integral
        DO m = 1, 20, 1
                CALL value = integrate(a,b,m)
        END DO
END PROGRAM integration