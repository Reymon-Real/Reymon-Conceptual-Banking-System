      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. rcbs_report_cnbv_R01_A0111.
       AUTHOR. Reymon Dev.
       DATE-WRITTEN.  20. August. 2026
       DATE-COMPILED. 20. August. 2026
      *****************************************************************

      *****************************************************************
       ENVIRONMENT DIVISION.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       COPY "report/cnbv/R01/A0111/fc.cpy".
      *****************************************************************

      *****************************************************************
       DATA DIVISION.

       FILE SECTION.
       COPY "report/cnbv/R01/A0111/fs.cpy".

       WORKING-STORAGE SECTION.
       COPY "report/cnbv/R01/A0111/ws.cpy".

       LINKAGE SECTION.
       01 LS-FILE-STATUS PIC X(02) DISPLAY.
       COPY "report/cnbv/R01/A0111/ls.cpy".

      *****************************************************************

      *****************************************************************
       PROCEDURE DIVISION
          USING LS-REPORT-CNBV-NAME-DF LS-REPORT-CNBV-R01-A-0111
          RETURNING LS-FILE-STATUS.

           MOVE WS-REPORT-CNBV-DF-NUMBER TO LS-REPORT-CNBV-DF-NUMBER.
           MOVE LS-REPORT-CNBV-R01-A-0111 TO REPORT-CNBV-R01-A-0111.

           OPEN OUTPUT REPORT-CNBV-R01-A-0111-DF.

           CLOSE REPORT-CNBV-R01-A-0111-DF.

           ADD 1 TO WS-REPORT-CNBV-DF-NUMBER.
           MOVE WS-REPORT-CNBV-R01-A-0111-FST TO LS-FILE-STATUS.

           GOBACK.
      *****************************************************************