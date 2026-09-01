      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. rcbs_account_open IS RECURSIVE.
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
       PROCEDURE DIVISION USING LK-ACCOUNT-DF-NAME.

           OPEN I-O ACCOUNT-DF.

           IF WS-ACCOUNT-FST EQUAL "00"
           
              CLOSE ACCOUNT-DF
           
           ELSE
           
              OPEN OUTPUT ACCOUNT-DF
              CLOSE ACCOUNT-DF
           
           END-IF.

           GOBACK.
      *****************************************************************