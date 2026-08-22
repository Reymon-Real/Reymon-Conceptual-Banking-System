      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. rcbs_register_bank_create IS INITIAL.
       AUTHOR. Reymon Dev.
       DATE-WRITTEN.  16. August. 2026
       DATE-COMPILED. 17. August. 2026
      *****************************************************************

      *****************************************************************
       ENVIRONMENT DIVISION.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       COPY "register/bank/fc.cpy".
      *****************************************************************

      *****************************************************************
       DATA DIVISION.

       FILE SECTION.
       COPY "register/bank/fs.cpy".

       WORKING-STORAGE SECTION.
       COPY "register/bank/ws.cpy".

       LINKAGE SECTION.

       77 WS-FILE-STATUS PIC X(02) DISPLAY.

      *****************************************************************

      *****************************************************************
       PROCEDURE DIVISION RETURNING WS-FILE-STATUS.

           *> Verifie if file exist
           OPEN I-O TRANSACTION-DATA-FILE.

           *> Close file if exist and create if not exist
           IF WS-TRNC-BANK-FILE-STATUS EQUAL "00"
           
               CLOSE TRANSACTION-DATA-FILE
           
           ELSE

               OPEN OUTPUT TRANSACTION-DATA-FILE
               CLOSE TRANSACTION-DATA-FILE
           
           END-IF.

           *> Return Result of the operation
           MOVE WS-TRNC-BANK-FILE-STATUS TO WS-FILE-STATUS.

           GOBACK.
      *****************************************************************