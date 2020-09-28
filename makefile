
CFLAGS	         =
FFLAGS	         =
CPPFLAGS         =
FPPFLAGS         =
LOCDIR           = ParallelProj
EXAMPLESC        = Poisson2D.c 
MANSEC           = KSP
CLEANFILES       = rhs.vtk solution.vtk
NP               = 1

include ${PETSC_DIR}/conf/variables
include ${PETSC_DIR}/conf/rules


Poisson2D: Poisson2D.o  chkopts
	-${CLINKER} -o Poisson2D Poisson2D.o  ${PETSC_KSP_LIB}
	${RM} Poisson2D.o

include ${PETSC_DIR}/conf/test
