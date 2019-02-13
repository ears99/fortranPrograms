	module gnuplot_fortran
	implicit none
	contains
		subroutine plot2d(x,y)
	! intent(in) means that the arrays x and y inside this subroutine aren't going to change their values.
		real, intent(in), dimension(:) :: x, y
		integer :: sizeX, sizeY, i
		
		sizeX = size(x)
		sizeY = size(y)

		if(sizeX /= sizeY) then
			print *, "Array size mismatched!"
		else 
		! insert data into file
		open(unit=1, file='plot2d.dat')
		do i = 1,size(x)
			write(1,*) x(i), ' ', y(i)
		end do 
	end if
		end subroutine plot2d

		subroutine plot3d(x,y,z)
			real, intent(in), dimension(:) :: x, y, z
			integer :: sizeX, sizeY, sizeZ, i
			sizeX = size(x)
			sizeY = size(y)
			sizeZ = size(z)

				if(sizeX /= sizeY .or. sizeX /= sizeZ) then
					print *, "Array size mismatched!"
				else 
				open(unit=2, file='plot3d.dat')
				do i = 1,size(x)
					write(1,*) x(i), ' ', y(i), ' ', z(i)
				end do
			end if
		end subroutine plot3d

	end module gnuplot_fortran
