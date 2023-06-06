program three_body
        use rkf45_mod, only : r8_rkf45 ! Figure out which function I need
        implicit none
        integer, parameter :: dp = selected_real_kind(15,307) ! double precision
        real(dp), parameter :: pi = 3.1415926535897932
        real(dp) :: time_start = 0 ! Start time, starts at t = 0
        real(dp) :: time_end = 1000 ! End time, maybe it should be written in input.dat?
        real(dp) :: time ! Current time
        real(dp) :: x1, x2, x3, y1, y2, y3 ! Coordinates of our "particles"
        real(dp) :: & ! Velocities/derivatives of the coordinates
                vel_x1, vel_x2, vel_x3 &
                vel_y1, vel_y2, vel_y3 
        real(dp) :: & ! Acceleration of the "particles" given by Newtons law.
                acc_x1, acc_x2, acc_x3 &
                acc_y1, acc_y2, acc_y3 
        real(dp) :: m1, m2, m3 ! Masses of the "particles"
        ! First read from input.dat:
        ! Masses, initial coordinates, initial velocities
        ! Code :)
        ! Calculate acceleration at the starting position
        ! Code :)
        time = time_start
        ! Initialization done, start the integration:
        
        do while (time <= time_end)
                call r8_rkf45 ( f, neqn, y, yp, t, tout, relerr, abserr, flag )
        end do

end program three_body