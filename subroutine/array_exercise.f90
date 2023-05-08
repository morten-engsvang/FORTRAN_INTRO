PROGRAM array_exercise
        IMPLICIT NONE
        INTEGER, PARAMETER :: dp = SELECTED_REAL_KIND(15,307)
        REAL(dp), DIMENSION(3) :: x, y
        REAL(dp) :: z
        WRITE(*,*) "Please enter 2 arrays of length 3."
        WRITE(*,*) "First vector:"
        READ(*,*) x
        WRITE(*,*) "Second vector:"
        READ(*,*) y
        !z = sum(x*y)
        call dotprod(x,y,z)
        WRITE(*,*) "The dot product is: ", z
        
        CONTAINS
        SUBROUTINE dotprod(a,b,c)
                REAL(dp), DIMENSION(3) :: a, b
                REAL(dp) :: c
                c = sum(a*b)
        END SUBROUTINE dotprod
END PROGRAM array_exercise
