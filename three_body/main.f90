PROGRAM three_body
        USE rkf45_mod, ONLY : ! Figure out which function I need
        IMPLICIT NONE
        INTEGER, PARAMETER :: dp = SELECTED_REAL_KIND(15,307)
        REAL(dp), PARAMETER :: pi = 3.1415926535897932
        REAL(dp) :: t = 0 ! Current time, starts at t = 0
        REAL(dp) :: t_end = 1000 ! End time, maybe it should be written in input.dat?

        DO m = 1, 10000, 1
                WRITE(*,*) "value of m: ", m
                value = integrate(a,b,m)
                WRITE(*,*) "integral value of: ", value
        END DO
END PROGRAM three_body