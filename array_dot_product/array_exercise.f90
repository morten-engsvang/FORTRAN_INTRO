PROGRAM array_exercise
        IMPLICIT NONE
        INTEGER, PARAMETER :: dp = SELECTED_REAL_KIND(15,307)
        REAL(dp), DIMENSION(3) :: x, y
        REAL(dp) :: z
        WRITE(*,*) "Please enter 2 arrays of length 3.\nFirst vector:"
        READ(*,*) x
        WRITE(*,*) "Second vector:"
        READ(*,*) y
        z = sum(x*y)
        WRITE(*,*) "The dot product is: ", z
END PROGRAM array_exercise
