      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. main.
       AUTHOR. Reymon Dev.
       DATE-WRITTEN.  18. April. 2026
       DATE-COMPILED. 17. August. 2026
      *****************************************************************

      *****************************************************************
       ENVIRONMENT DIVISION.
      *****************************************************************

      *****************************************************************
       DATA DIVISION.

       WORKING-STORAGE SECTION.
       COPY "account/ws.cpy".
       COPY "register/bank/ws.cpy".
       COPY "report/cnbv/R01/A0111/ws.cpy".
       
       01 WS-ACCEPT-PROGRAM PIC X(04)  VALUE SPACES.
          88 ACCEPT-CREATE-REPORT-CNBV VALUE "CNBV".
          88 ACCEPT-EXIT               VALUE "EXIT".
       
       77 b pic X(001) display.

       77 UBS-ACCOUNT-PEOPLE PIC X(255)
            VALUE "test/UBS/account/people.db".
      *****************************************************************

      *****************************************************************
       PROCEDURE DIVISION.
       MAIN-CONTROL.

           PERFORM INIT-PROGRAM.

           PERFORM UNTIL WS-ACCEPT-PROGRAM EQUAL "EXIT"

               ACCEPT WS-ACCEPT-PROGRAM

               *>MOVE FUNCTION UPPER-CASE(WS-ACCEPT-PROGRAM)
               *>TO WS-ACCEPT-PROGRAM

               EVALUATE TRUE

                  WHEN ACCEPT-CREATE-REPORT-CNBV
                     CALL "rcbs_report_cnbv_R01_A0111"
                        USING
                           WS-REPORT-CNBV-DF-NAME
                           b
                     END-CALL

                  WHEN OTHER

                     IF NOT ACCEPT-EXIT
                        DISPLAY "Unrecognized Operation"
                     END-IF

               END-EVALUATE

           END-PERFORM.
           
           STOP RUN.

       INIT-PROGRAM.
           CALL "rcbs_account_open" USING UBS-ACCOUNT-PEOPLE.

           MOVE "test/cnbv/report_" TO WS-REPORT-CNBV-DF-FILE.
           MOVE "_.txt"             TO WS-REPORT-CNBV-DF-EXTENSION.
      *****************************************************************