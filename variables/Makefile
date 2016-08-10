AS	=	as
LINKER	=	gcc
OBJ	=	variables.o storeVariables.o

all: load store
load: $(OBJ)
	$(LINKER) -o load.out variables.o

store: $(OBJ)
	$(LINKER) -o store.out storeVariables.o

%.o: %.s
	$(AS) -o $@ $<
