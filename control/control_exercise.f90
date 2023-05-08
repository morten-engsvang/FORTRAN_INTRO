PROGRAM control_exercise
        IMPLICIT NONE
        INTEGER, PARAMETER :: dp = SELECTED_REAL_KIND(15,307)
        REAL(dp), DIMENSION(3) :: x, y
        REAL(dp) :: z = 0
        INTEGER :: i
        WRITE(*,*) "Please enter 2 arrays of length 3."
        WRITE(*,*) "First vector:"
        READ(*,*) x
        WRITE(*,*) "Second vector:"
        READ(*,*) y
        do i = 1, 3, 1
                z = z + x(i)*y(i)
        end do
        WRITE(*,*) "The dot product is: ", z
END PROGRAM control_exercise
