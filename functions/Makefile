GF = gfortran
.PHONY: default


default: array_exercise c_to_f

array_exercise:
	$(GF) array_exercise.f90 -o array_exercise

c_to_f:
	$(GF) c_to_f.f90 -o c_to_f
clean:
	$(RM) array_exercise c_to_f
