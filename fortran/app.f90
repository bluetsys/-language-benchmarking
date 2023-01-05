PROGRAM CONSOLE1

    IMPLICIT NONE

    REAL        :: START, FINISH
    INTEGER*8   :: ADD, INDEX

    CALL CPU_TIME(START)
        DO INDEX = 0, 100000000
            ADD = ADD + INDEX
        END DO
    CALL CPU_TIME(FINISH)

    PRINT *, '=========================='
    PRINT *, 'fortran'
    PRINT *, ADD
    PRINT *, FINISH - START

END PROGRAM CONSOLE1
