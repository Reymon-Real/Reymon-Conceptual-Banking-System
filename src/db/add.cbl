       IDENTIFICATION DIVISION.
       PROGRAM-ID. REYDB-ADD.

       ENVIRONMENT DIVISION.

       INPUT-OUTPUT SECTION.

       FILE-CONTROL.

       COPY "reydb-control.cbl".

       DATA DIVISION.

       FILE SECTION.

       COPY "reydb-file.cbl".

       LINKAGE SECTION.

       COPY "reydb-linking.cbl".

       PROCEDURE DIVISION USING REYDB-LINKING.

           OPEN EXTEND REYDB-FILE.
           
           MOVE REYDB-LINKING TO REYDB-TABLE.
           WRITE REYDB-TABLE.
           
           CLOSE REYDB-FILE.
           
           GOBACK.