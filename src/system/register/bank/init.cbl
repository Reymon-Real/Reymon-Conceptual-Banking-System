      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. rcbs_register_bank_init IS RECURSIVE.
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

       LOCAL-STORAGE SECTION.
       COPY "register/bank/ws.cpy".

      *****************************************************************

      *****************************************************************
       PROCEDURE DIVISION.

           OPEN I-O REGISTER-BANK-DF.

           IF WS-REGISTER-BANK-FST NOT EQUAL TO "00"
            OPEN OUTPUT REGISTER-BANK-DF.

           CLOSE REGISTER-BANK-DF.

           GOBACK.
      *****************************************************************