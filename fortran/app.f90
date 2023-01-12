PROGRAM CONSOLE1

    ! IMPLICIT NONE

    REAL          :: START, FINISH
    INTEGER(8)    :: ADD, INDEX = 0

    character(len=32)           :: arg

    call get_command_argument(1, arg)

    ADD = 0;

    CALL CPU_TIME(START)
        DO INDEX = 0, 100000000
            ADD = ADD + INDEX
        END DO
    CALL CPU_TIME(FINISH)

    PRINT *, '=========================='
    PRINT *, 'fortran', arg
100 FORMAT(I16)
    WRITE ( *, 100 ) ADD
101 FORMAT(F9.7)
    WRITE ( *, 101 ) FINISH - START

END PROGRAM CONSOLE1