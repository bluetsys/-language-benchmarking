IDENTIFICATION DIVISION.
PROGRAM-ID. HELLO.

DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-INDEX             PIC 9(16) VALUE 0.
       01 WS-SUM               PIC 9(16) VALUE 0.
       01 WS-CURRENT-DATE.
        02 ws-year             PIC 9(4).
        02 ws-month            PIC 9(2).
        02 ws-day              PIC 9(2).
        02 ws-hours            PIC 9(2).
        02 ws-minutes          PIC 9(2).
        02 ws-seconds          PIC 9(2).
        02 ws-MILLISECONDS     PIC 9(2).
       01 WS-ST                PIC 9(16).
       01 WS-ED                PIC 9(16).
        
PROCEDURE DIVISION.

       MOVE FUNCTION CURRENT-DATE TO WS-CURRENT-DATE.
       MOVE WS-CURRENT-DATE TO WS-ST.

       A-PARA.
           PERFORM B-PARA WITH TEST AFTER UNTIL WS-INDEX >= 100000000.

           MOVE FUNCTION CURRENT-DATE TO WS-CURRENT-DATE.
           MOVE WS-CURRENT-DATE TO WS-ED.

           SUBTRACT WS-ST FROM WS-ED

           DISPLAY "==========================".
           DISPLAY "cobol 테스트".
           DISPLAY WS-SUM.
           DISPLAY WS-ED.

           STOP RUN.
       
       B-PARA.
           ADD 1 TO WS-INDEX.
           ADD WS-INDEX TO WS-SUM.
              
       C-PARA.
           DISPLAY "222"

STOP RUN.
