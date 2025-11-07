       IDENTIFICATION DIVISION.
       PROGRAM-ID. REYDB-INIT.

       ENVIRONMENT DIVISION.

       INPUT-OUTPUT SECTION.
    
       FILE-CONTROL.
    
       COPY "reydb-control.cbl".

       DATA DIVISION.

       FILE SECTION.

       COPY "reydb-file.cbl".

       PROCEDURE DIVISION.

           OPEN EXTEND REYDB-FILE.
           CLOSE REYDB-FILE.

           GOBACK.