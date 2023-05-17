GF = gfortran
OBJ = rkf45_mod.o main.o
.PHONY: default

default: main

main: $(OBJ)
	$(GF) $(OBJ) -o $@

rkf45_mod.o: rkf45_mod.f90
	$(GF) -c $< -o $@

main.o: main.f90
	$(GF) -c $< -o $@

clean:
	$(RM) main *.o *.mod output.dat
