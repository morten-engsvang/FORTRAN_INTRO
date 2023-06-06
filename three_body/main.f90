program three_body
        use rkf45_mod, only : ! Figure out which function I need
        implicit none
        integer, parameter :: dp = selected_real_kind(15,307) ! double precision
        real(dp), parameter :: pi = 3.1415926535897932
        real(dp), parameter :: time_increment = 1.0 ! Size of the time-step
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

        ! Initialization done, start the time-loop:
        do time=time_start, time_end, time_increment
                ! Update positions, using velocity
                x1 = x1 + vel_x1*time_increment
                x2 = x2 + vel_x2*time_increment
                x3 = x3 + vel_x3*time_increment
                y1 = y1 + vel_y1*time_increment
                y2 = y2 + vel_y2*time_increment
                y3 = y3 + vel_x3*time_increment
                ! Update velocity for the new position
                vel_x1 = vel_x1 + acc_x1
                vel_x2 = vel_x2 + acc_x2
                vel_x3 = vel_x3 + acc_x3
                vel_y1 = vel_y1 + acc_y1
                vel_y2 = vel_y2 + acc_y2
                vel_y3 = vel_y3 + acc_y3
                ! Calculate acceleration at the new position
        end do
        do m = 1, 10000, 1
                write(*,*) "value of m: ", m
                value = integrate(a,b,m)
                write(*,*) "integral value of: ", value
        end do
end program three_body