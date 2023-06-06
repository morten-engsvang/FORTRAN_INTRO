program three_body
        use runge_kutta_mod ! Figure out which function I need
        implicit none
        !integer, parameter :: dp = selected_real_kind(15,307) ! double precision
        real(dp), parameter :: pi = 3.1415926535897932
        real(dp) :: time_start = 0 ! Start time, starts at t = 0
        real(dp) :: time_increment = 1 
        real(dp) :: time_end = 10 ! End time, maybe it should be written in input.dat?
        real(dp) :: time ! Current time
        real(dp), dimension(12) :: variables
        real(dp), dimension(12) :: derivatives = 0.0
        real(dp) :: relerr = 1e-6
        real(dp) :: abserr = 1e-6
        integer :: flag = 2
        ! First read from input.dat:
        ! Initial coordinates, initial velocities
        ! Code :)
        variables(1) = 0
        variables(2) = 0
        variables(3) = 0
        variables(4) = 0
        variables(5) = 10
        variables(6) = 10
        variables(7) = 6
        variables(8) = 6
        variables(9) = 20
        variables(10) = 20
        variables(11) = 15
        variables(12) = 5

        ! Should encode the initial positions and velocities in variables as given in the slides.
        time = time_start
        ! Initialization done, start the integration:
        ! "Dumps" at each time increment
        open(11, file="test.dat")
        do while (time <= time_end)
                call r8_rkf45(calc_derivatives, 12, variables, derivatives, time, time+time_increment, relerr, abserr, flag)
                write(11,*) time-time_increment, variables(1:2), variables(5:6), variables(9:10)
        end do

end program three_body