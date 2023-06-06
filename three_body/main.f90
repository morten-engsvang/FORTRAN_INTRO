program three_body
        use rkf45_mod, only : ! Figure out which function I need
        implicit none
        integer, parameter :: dp = SELECTED_REAL_KIND(15,307)
        real(dp), parameter :: pi = 3.1415926535897932
        real(dp) :: t = 0 ! Current time, starts at t = 0
        real(dp) :: t_end = 1000 ! End time, maybe it should be written in input.dat?

        do m = 1, 10000, 1
                write(*,*) "value of m: ", m
                value = integrate(a,b,m)
                write(*,*) "integral value of: ", value
        end do
end program three_body