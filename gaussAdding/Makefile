AS	=	as
LINKER	=	gcc
OBJ	=	gauss.o

prog: $(OBJ)
	$(LINKER) -o gauss.out $(OBJ)

%.o: %.s
	$(AS) -o $@ $<
