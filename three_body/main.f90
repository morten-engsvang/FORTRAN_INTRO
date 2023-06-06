program three_body
        use runge_kutta_mod ! Figure out which function I need
        implicit none
        !integer, parameter :: dp = selected_real_kind(15,307) ! double precision
        real(dp), parameter :: pi = 3.1415926535897932
        real(dp) :: time_start = 0 ! Start time, starts at t = 0
        real(dp) :: time_increment = 0.1
        real(dp) :: time_end  ! End time, maybe it should be written in input.dat?
        real(dp) :: time ! Current time
        real(dp), dimension(12) :: variables
        real(dp), dimension(12) :: derivatives = 0.0
        real(dp) :: relerr = 1e-12
        real(dp) :: abserr = 1e-12
        integer :: flag = 2
        integer :: i
        integer :: NEQN = 12
        ! First read from input.dat:
        ! Initial coordinates, initial velocities
        open(12, file="input.dat")
        do i = 1, 12,1
                read(12,*) variables(i)
        end do
        read(12,*) time_end
        close(12)
        ! Should encode the initial positions and velocities in variables as given in the slides.
        time = time_start
        call calc_derivatives(time, variables, derivatives)
        ! Initialization done, start the integration:
        ! "Dumps" at each time increment
        open(11, file="test.dat")
        do while (time <= time_end)
                call r8_rkf45(calc_derivatives, NEQN, variables, derivatives, time, time+time_increment, relerr, abserr, flag)
                write(11,*) time-time_increment, variables(1:2), variables(5:6), variables(9:10)
        end do
        close(11)
end program three_body