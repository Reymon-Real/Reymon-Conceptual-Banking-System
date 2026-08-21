      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. rcbs_account_write IS INITIAL.
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

       WORKING-STORAGE SECTION.
       COPY "account/ws.cpy".

       LINKAGE SECTION.
       COPY "account/ls.cpy".
      *****************************************************************

      *****************************************************************
       PROCEDURE DIVISION USING LS-RCBS-ACCOUNT.

           OPEN I-O RCBS-ACCOUNT-DF.
              
              WRITE FS-RCBS-ACCOUNT FROM LS-RCBS-ACCOUNT.

           CLOSE RCBS-ACCOUNT-DF.

           GOBACK.
      *****************************************************************s