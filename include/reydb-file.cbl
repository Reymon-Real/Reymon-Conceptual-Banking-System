      ************************************************
      *** SPDX-License-Identifier: AGPL-3-or-later ***
      ************************************************

      ************************************
      *** Author: Eduardo Pozos Huerta ***
      *** File: reydb-file.cbl         ***
      *** Date: 11/03/2025             ***
      *** Update: 11/04/2025           ***
      ************************************

      *********************
      *** Database file ***
      *********************

       FD REYDB-FILE.
       01 REYDB-TABLE.
           05 REYDB-FILE-ID          PIC 9(18).
           05 REYDB-FILE-NAME        PIC A(64).
           05 REYDB-FILE-LASTNAME    PIC A(64).
           05 REYDB-FILE-AGE         PIC 9(03).
           05 REYDB-FILE-BIRTHDAY    PIC 9(02).
           05 REYDB-FILE-MONTH-BIRTH PIC 9(02).
           05 REYDB-FILE-YEAR-BIRTH  PIC 9(18).