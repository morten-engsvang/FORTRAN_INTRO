PROGRAM c_to_f
        IMPLICIT NONE
        INTEGER, PARAMETER :: dp = SELECTED_REAL_KIND(15,307)
        REAL(dp) :: c, f
        CHARACTER :: input
        LOGICAL :: celsius_input
        WRITE(*,*) "Is the input temperature Celsius? y/n"
        READ(*,*) input
        IF ( input == "y" ) THEN
                celsius_input = .TRUE.
        else
                celsius_input = .FALSE.
        END IF
        WRITE(*,*) "Enter the temperature:"
        READ(*,*) c
        f = convert(c, celsius_input)
        PRINT *, "The converted temperature is: ", f
        CONTAINS
        FUNCTION convert(T_in, celsius_input) RESULT(T_out)
                IMPLICIT NONE
                REAL(dp) :: T_in, T_out
                LOGICAL :: Celsius_input
                SELECT CASE (Celsius_input)
                CASE (.TRUE.)
                        T_out = 9.0/5.0*T_in+32
                CASE (.FALSE.)
                        T_out = 5.0/9.0*(T_in-32)
                END SELECT
        END FUNCTION convert
END PROGRAM c_to_f
