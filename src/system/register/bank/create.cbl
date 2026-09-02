      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. rcbs_register_bank_create IS RECURSIVE.
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

       LINKAGE SECTION.
       COPY "register/bank/lk.cpy".

      *****************************************************************

      *****************************************************************
       PROCEDURE DIVISION USING BY REFERENCE LK-REGISTER-BANK.

           OPEN I-O REGISTER-BANK-DF.

           WRITE FS-REGISTER-BANK FROM LK-REGISTER-BANK.

           CLOSE REGISTER-BANK-DF.

           GOBACK.
      *****************************************************************