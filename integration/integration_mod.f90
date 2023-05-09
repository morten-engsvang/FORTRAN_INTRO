MODULE integration_mod
    IMPLICIT NONE
    INTEGER, PARAMETER :: dp = SELECTED_REAL_KIND(15,307)
CONTAINS
    FUNCTION integrate(arg) RESULT(return)
        !integer, intent(in) :: arg
        REAL(dp) :: return
    
        
    END FUNCTION integrate
END MODULE integration_mod