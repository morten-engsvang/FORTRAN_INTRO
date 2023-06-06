program main

use rkf45_mod

!==============================================================================!
!
! Calculate the three body problem constrained in a plane
!
! m1*r1_pp = -m1*m2*(r1 - r2)/|r1-r2|^3 - m1*m3*(r1 - r3)/|r1-r3|^3
! m2*r2_pp = -m2*m1*(r2 - r1)/|r2-r1|^3 - m2*m3*(r2 - r3)/|r2-r3|^3
! m3*r3_pp = -m3*m1*(r3 - r1)/|r3-r1|^3 - m3*m2*(r3 - r2)/|r3-r2|^3
! r1 = (x1, y1)
! r2 = (x2, y2)
! r3 = (x3, y3)
! m1, m2, m3: body masses
! rx_pp = d (d rx/dt) / dt
! Here rx is normalized to make the Gravitational coefficients to be 1. Then
! we can also write the equations in each x and y direction, e.g.,
! 
!
! Then we make an ODE system
!
!==============================================================================!

! use 
implicit none

integer, parameter :: dp = selected_real_kind(15,300)

integer, parameter :: NEQN=12

real(dp) :: f(NEQN), f_new(NEQN), fp(NEQN)

! Masses of the bodies
real(dp) :: m1, m2, m3

real(dp) :: time
real(dp) :: time_start, time_end
real(dp) :: dt

real(dp) :: time1, time2

integer :: fid_input, fid_output

real(dp) :: relerr, abserr
integer :: flag

namelist /input/ f, m1, m2, m3, time_start, time_end, dt

! Set default values
f = (/  1.0d0, -1.0d0, 0.0d0, 0.0d0, &
        1.0d0,  3.0d0, 0.0d0, 0.0d0, &
       -2.0d0, -1.0d0, 0.0d0, 0.0d0 &
    /)

m1 = 5.0d0
m2 = 3.0d0
m3 = 4.0d0

time_start = 0.0d0
time_end   = 100.0d0
dt = 0.1d0

! Read input values
fid_input = 99
open(unit=fid_input, file='input.dat', status='old')
rewind(fid_input)
read(fid_input, nml=input)
close(fid_input)


! Set initial values
time = time_start
call f_rhs(time, f, fp)
flag = 1

! Open output file
fid_output = 100
open(unit=fid_output, file='output.dat', status='replace')
rewind(fid_output)
write(fid_output, *) time, f

write(*,*) 'dt = ', dt

write(*,*) time, f

relerr = 1.0d-10
abserr = 1.0d-10

do while (time < time_end)
  time1 = time
  time2 = time+dt
write(*,*) "hep"
  call r8_rkf45 ( f_rhs, NEQN, f, fp, time1, time2, relerr, abserr, flag )
write(*,*) "hep"
  time = time + dt

  write(*,*) time, f
  write(fid_output, *) time, f
end do

close(fid_output)

contains


!--------------------------------------!
! Calcuate distance between two points
!--------------------------------------!
function dist(x1, y1, x2, y2)
  ! Input
  real(dp) :: x1, y1, x2, y2

  ! Output
  real(dp) :: dist

  ! Calculate the distance
end function dist


!--------------------------------------!
! Right hand side of the ODE system
!
! Input:
! t      : the independent variable, usually time
! f(NEQN): the value of the dependent variable.
!
! Output:
! fp(NEQN): the value of the derivative,equal to df(1:NEQN)/dt.
!
!--------------------------------------!
subroutine f_rhs(t, f, fp)

  integer, parameter :: NEQN = 12

  real(dp) :: t
  real(dp) :: f(NEQN)
  real(dp) :: fp(NEQN)

  ! Write your own code here to calculate fp
  fp = 0.0d0

end subroutine f_rhs

end program main
