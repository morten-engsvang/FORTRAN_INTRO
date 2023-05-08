MODULE dotprod_mod
    IMPLICIT NONE
    INTEGER, PARAMETER :: dp = SELECTED_REAL_KIND(15,307)
CONTAINS
    SUBROUTINE dotprod(a,b,c)
        IMPLICIT NONE
        REAL(dp), DIMENSION(3) :: a, b
        REAL(dp) :: c
        c = sum(a*b)
    END SUBROUTINE dotprod
END MODULE dotprod_mod