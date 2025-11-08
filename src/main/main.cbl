      ************************************************
      *** SPDX-License-Identifier: AGPL-3-or-later ***
      ************************************************

      ************************************
      *** Author: Eduardo Pozos Huerta ***
      *** File: main.cbl               ***
      *** Date: 11/03/2025             ***
      *** Update: 11/07/2025           ***
      ************************************
      
      ***************************
      *** Start Cobol Program ***
      ***************************

       IDENTIFICATION DIVISION.
       PROGRAM-ID. MAIN-COBOL.
       
       AUTHOR. EDUARDO POZOS HUERTA.
       DATE-WRITTEN. 11/03/2025.
       DATE-COMPILED. 11/07/2025.

       ENVIRONMENT DIVISION.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       COPY "reydb-control.cbl".

       DATA DIVISION.

       FILE SECTION.
       COPY "reydb-file.cbl".

       WORKING-STORAGE SECTION.

       01 OPERATIONS.
           05 OPERATION-ADD      PIC A(23) VALUE SPACE.
           05 OPERATION-REMOVE   PIC A(26) VALUE SPACE.
           05 OPERATION-CHECK    PIC A(22) VALUE SPACE.
           05 OPERATION-TRANSFER PIC A(31) VALUE SPACE.
           05 OPERATION-DEPOSIT  PIC A(31) VALUE SPACE.
           05 OPERATION-INPUT    PIC A(64) VALUE SPACE.

       01 DISPLAY-OPTIONS.
           05 DISPLAY-NAME        PIC A(15) VALUE "Enter your name".
           05 DISPLAY-LASTNAME    PIC A(19) VALUE "Enter your lastname".
           05 DISPLAY-AGE         PIC A(14) VALUE "Enter your age".
           05 DISPLAY-BIRTHDAY    PIC A(19) VALUE "Enter your birthday".
           
           05 DISPLAY-MONTH-BIRTH PIC A(25) VALUE
                "Enter your month of birth".

           05 DISPLAY-YEAR-BIRTH  PIC A(24) VALUE
                "Enter your year of birth".
        
        01 REYDB-WORKING-TABLE.
           05 REYDB-WORKING-AGE         PIC X(03).
           05 REYDB-WORKING-BIRTHDAY    PIC X(02).
           05 REYDB-WORKING-MONTH-BIRTH PIC X(02).
           05 REYDB-WORKING-YEAR-BIRTH  PIC X(18).

       PROCEDURE DIVISION.

      *************************************
      *** Initialize Program Enviroment ***
      *************************************

           CALL "REYDB-INIT".

      ***********************************
      *** Initialize Global Variables ***
      ***********************************

           MOVE "1) Add user to database"         TO OPERATION-ADD.
           MOVE "2) Remove user to database"      TO OPERATION-REMOVE.
           MOVE "3) Check account money"          TO OPERATION-CHECK.
           MOVE "4) Transfer money to other user" TO OPERATION-TRANSFER.
           MOVE "5) Deposit Money to the account" TO OPERATION-DEPOSIT.
      
      *********************
      *** Program Logic ***
      *********************

       PROGRAM-LOGIC.

           DISPLAY OPERATION-ADD.
           DISPLAY OPERATION-REMOVE.
           DISPLAY OPERATION-CHECK.
           DISPLAY OPERATION-TRANSFER.
           DISPLAY OPERATION-DEPOSIT.

           DISPLAY "Operation: " ACCEPT OPERATION-INPUT.
           
           IF OPERATION-INPUT = "1" OR OPERATION-INPUT = "Add"
               PERFORM ENTER-DATA
               PERFORM VERIFY-DATA
           END-IF

           IF OPERATION-INPUT = "EXIT" OR OPERATION-INPUT = "exit"
               STOP RUN
           END-IF

           GO TO PROGRAM-LOGIC.

      *******************
      *** End Program ***
      *******************

           STOP RUN.
      
      ***************************
      *** Name: Enter Data    ***
      *** Date: 11/03/2025    ***
      *** Update: 11/05/2025  ***
      ***************************

       ENTER-DATA.

           MOVE ZERO TO REYDB-WORKING-TABLE.
      
      **************************************

           DISPLAY DISPLAY-NAME.
           ACCEPT  REYDB-FILE-NAME.

           DISPLAY SPACE.

      **************************************

           DISPLAY DISPLAY-LASTNAME.
           ACCEPT  REYDB-FILE-LASTNAME.

           DISPLAY SPACE.

      **************************************

           DISPLAY DISPLAY-AGE.
           ACCEPT  REYDB-WORKING-AGE.

           DISPLAY SPACE.

      **************************************

           DISPLAY DISPLAY-MONTH-BIRTH.
           ACCEPT  REYDB-WORKING-MONTH-BIRTH.

           DISPLAY SPACE.

      **************************************

           DISPLAY DISPLAY-BIRTHDAY.
           ACCEPT  REYDB-WORKING-BIRTHDAY.

           DISPLAY SPACE.

      **************************************

           DISPLAY DISPLAY-YEAR-BIRTH.
           ACCEPT  REYDB-WORKING-YEAR-BIRTH.

           DISPLAY SPACE.

      **************************************
           MOVE FUNCTION NUMVAL(REYDB-WORKING-AGE) TO REYDB-FILE-AGE.
           
           MOVE FUNCTION NUMVAL(REYDB-WORKING-MONTH-BIRTH) TO REYDB-FILE
      -    -MONTH-BIRTH.
           
           MOVE FUNCTION NUMVAL(REYDB-WORKING-BIRTHDAY) TO REYDB-FILE-BI
      -    RTHDAY.

           MOVE FUNCTION NUMVAL(REYDB-WORKING-YEAR-BIRTH) TO REYDB-FILE-
      -    YEAR-BIRTH.

      **************************
      *** Name: VERIFY-DATA  ***
      *** Date: 11/04/2025   ***
      *** Update: 11/05/2025 ***
      **************************

       VERIFY-DATA.
           IF REYDB-FILE-AGE >= 120
               DISPLAY "Are you inmortal?"
               STOP RUN.
           
           IF REYDB-FILE-BIRTHDAY > 31
               DISPLAY "Are you an alien? Don't worry, your secret is sa
      -        "fe with me (calling 911)"
               STOP RUN.
           
           IF REYDB-FILE-MONTH-BIRTH > 12
               DISPLAY "Classic for those born in the month of Ofiusco"
               STOP RUN.
           
           IF REYDB-FILE-YEAR-BIRTH < 1925
               DISPLAY "How on earth are you still alive?!"
               STOP RUN.

           IF REYDB-FILE-YEAR-BIRTH > 2025
               DISPLAY "Will JPMorgan still exist in the future?"
               STOP RUN.