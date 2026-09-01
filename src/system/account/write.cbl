      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. rcbs_account_write IS RECURSIVE.
       AUTHOR. Reymon Dev.
       DATE-WRITTEN.  18. April. 2026
       DATE-COMPILED. 17. August. 2026
      *****************************************************************

      *****************************************************************
       ENVIRONMENT DIVISION.

       INPUT-OUTPUT SECTION.

       FILE-CONTROL.
       COPY "account/fc.cpy".
      *****************************************************************

      *****************************************************************
       DATA DIVISION.

       FILE SECTION.
       COPY "account/fs.cpy".

       LOCAL-STORAGE SECTION.
       COPY "account/ws.cpy".

       LINKAGE SECTION.
       COPY "account/lk.cpy".
      *****************************************************************

      *****************************************************************
       PROCEDURE DIVISION USING LK-ACCOUNT-DF-NAME LK-ACCOUNT.

           OPEN I-O ACCOUNT-DF.
              
              WRITE FS-ACCOUNT FROM LK-ACCOUNT.

           CLOSE ACCOUNT-DF.

           GOBACK.
      *****************************************************************s