GF = gfortran
OBJ = dotprod_mod.o array_exercise.o
.PHONY: default

default: array_exercise

array_exercise: $(OBJ)
#	$(GF) -c dotprod_mod.f90
#	$(GF) -c array_exercise.f90
	$(GF) $(OBJ) -o $@

dotprod_mod.o: dotprod_mod.f90
	$(GF) -c $< -o $@

array_exercise.o: array_exercise.f90
	$(GF) -c $< -o $@

clean:
	$(RM) array_exercise *.o *.mod *.dat
