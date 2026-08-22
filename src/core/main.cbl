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
       
       77 WS-ACCEPT-PROGRAM PIC 9(03) VALUE SPACE.
       77 b pic X(001) display.
      *****************************************************************

      *****************************************************************
       PROCEDURE DIVISION.
       MAIN-CONTROL.

           PERFORM INIT-PROGRAM.

           PERFORM UNTIL WS-ACCEPT-PROGRAM EQUAL "EXIT"

               ACCEPT WS-ACCEPT-PROGRAM

               MOVE FUNCTION UPPER-CASE(WS-ACCEPT-PROGRAM)
               TO WS-ACCEPT-PROGRAM

               EVALUATE WS-ACCEPT-PROGRAM

                  WHEN 0
                     CALL "rcbs_report_cnbv_R01_A0111"
                        USING
                           WS-REPORT-CNBV-DF-NAME
                           b
                     END-CALL

               END-EVALUATE

           END-PERFORM.
           
           STOP RUN.

       INIT-PROGRAM.
           CALL "rcbs_account_open".

           MOVE "test/cnbv/report_" TO WS-REPORT-CNBV-DF-FILE.
           MOVE "_.txt"             TO WS-REPORT-CNBV-DF-EXTENSION.
      *****************************************************************