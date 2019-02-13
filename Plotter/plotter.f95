	program plotter
	use gnuplot_fortran
	implicit none
	integer, parameter :: n = 100
	real, dimension(0:n) :: x, y
	real :: x_start = 0.0, x_end = 20.0, dx
	integer :: i

!create x array
	dx = (x_end - x_start)/n

! implied do loop
	x(0:n) = [(i*dx, i=0, n)]

! create y array
	y = sin(x)

! generate data for plot
	call plot2d(x,y)
	end program plotter
