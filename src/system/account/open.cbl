      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. rcbs_account_open.
       AUTHOR. Reymon Dev.
       DATE-WRITTEN.  18. April. 2026
       DATE-COMPILED. 17. August. 2026
      *****************************************************************

      *****************************************************************
       ENVIRONMENT DIVISION.

       INPUT-OUTPUT SECTION.

       FILE-CONTROL.

       COPY "account/file_control.cpy".
      *****************************************************************

      *****************************************************************
       DATA DIVISION.

       FILE SECTION.

       COPY "account/file_section.cpy".

       WORKING-STORAGE SECTION.

       COPY "account/ws.cpy".
      *****************************************************************

      *****************************************************************
       PROCEDURE DIVISION.

           DISPLAY "Hello World".

           GOBACK.
      *****************************************************************