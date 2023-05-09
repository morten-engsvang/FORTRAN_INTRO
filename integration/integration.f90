PROGRAM integration
        USE integration_mod, ONLY : integrate
        IMPLICIT NONE
        INTEGER, PARAMETER :: dp = SELECTED_REAL_KIND(15,307)
        REAL(dp), PARAMETER :: pi = 3.1415926535897932
        CALL integrate
END PROGRAM integration