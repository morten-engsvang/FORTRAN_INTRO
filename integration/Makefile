GF = gfortran
OBJ = integration_mod.o integration.o
.PHONY: default

default: integration

integration: $(OBJ)
	$(GF) $(OBJ) -o $@

integration_mod.o: integration_mod.f90
	$(GF) -c $< -o $@

integration.o: integration.f90
	$(GF) -c $< -o $@

clean:
	$(RM) integration *.o *.mod
