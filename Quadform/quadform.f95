	program quadform
	implicit none
	real :: a, b, c, disc, root1, root2

	print *, "Enter values for a, b, and c separated by commas or spaces."
	read *, a,b,c

	disc = b**2 - 4*a*c !discriminant
	if(disc < 0) then
		print *, "Roots are imaginary."
	else 
	root1 = (-b + sqrt(disc)/2*a)
	root2 = (-b - sqrt(disc)/2*a)

	print *, "Roots are ", root1, " and ", root2
	end if

	end program quadform
