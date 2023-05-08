GF = gfortran
.PHONY: default


default: array_exercise

array_exercise:
	$(GF) -c dotprod_mod.f90
	$(GF) -c array_exercise.f90
	$(GF) -o array_exercise dotprod_mod.o array_exercise.o

clean:
	$(RM) array_exercise *.o *.mod