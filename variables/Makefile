AS	=	as
LINKER	=	gcc
OBJ	=	variables.o

prog: $(OBJ)
	$(LINKER) -o variables.out $(OBJ)

%.o: %.s
	$(AS) -o $@ $<
