FC= gfortran

OUT= -o plotter


all: gnuplot_fortran.f95
	@clear
	@echo "Creating executable..."
	$(FC) gnuplot_fortran.f95 -c -o gnuplot_fortran.o
	$(FC) plotter.f95 -c -o plotter.o
	$(FC) gnuplot_fortran.o plotter.o $(OUT)

clean:
	@clear
	@echo "Removing all .o files..."
	rm *.o
	@echo "Removing created file..."
	rm plot2d.dat
