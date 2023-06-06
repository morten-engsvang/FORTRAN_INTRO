GF = gfortran
OBJ = runge_kutta_mod.o main.o
.PHONY: default

default: main

main: $(OBJ)
	$(GF) $(OBJ) -o $@

runge_kutta_mod.o: runge_kutta_mod.f90
	$(GF) -c $< -o $@

main.o: main.f90
	$(GF) -c $< -o $@

clean:
	$(RM) main *.o *.mod output.dat
