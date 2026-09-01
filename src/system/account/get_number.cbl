      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. rcbs_get_account_number IS RECURSIVE.
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
       COPY "account/ws.getoper.cpy".

       77 WS-LAST-ID PIC 9(18) COMP-5.

       LINKAGE SECTION.
       COPY "account/lk.cpy".

       77 LK-LAST-ID PIC 9(10)V9(5) COMP-5.
       77 LK-ACCOUNT-OPERATION PIC X(10) DISPLAY.
      *****************************************************************

      *****************************************************************
       PROCEDURE DIVISION
       USING BY REFERENCE LK-ACCOUNT-DF-NAME LK-ACCOUNT-OPERATION
       RETURNING LK-LAST-ID.

           MOVE LK-ACCOUNT-OPERATION TO WS-GET-ACCOUNT-OPERRATION.

           OPEN INPUT ACCOUNT-DF.
              
              *> Get Last Account ID
              IF GET-ACCOUNT-LAST-ACCOUNT THEN
                    
                 MOVE HIGH-VALUES TO RK-ACCOUNT-NUMBER
                    
                 START ACCOUNT-DF
                    KEY IS LESS THAN RK-ACCOUNT-NUMBER
                       INVALID KEY
                       MOVE ZERO TO LK-LAST-ID
                 END-START

                 IF WS-ACCOUNT-FST EQUAL "00"
                    READ ACCOUNT-DF PREVIOUS
                       AT END
                          MOVE ZEROS TO LK-LAST-ID
                       NOT AT END
                          MOVE RK-ACCOUNT-NUMBER TO LK-LAST-ID
                    END-READ
                 END-IF
                  
              END-IF.

              *> Get Next account number available
              IF GET-ACCOUNT-AVAILABLE-NUMBER THEN

                 MOVE HIGH-VALUES TO RK-ACCOUNT-NUMBER

                 START ACCOUNT-DF
                    KEY IS LESS THAN RK-ACCOUNT-NUMBER
                       INVALID KEY
                          MOVE ZERO TO LK-LAST-ID
                 END-START

                 IF WS-ACCOUNT-FST EQUAL "00"
                    READ ACCOUNT-DF PREVIOUS
                       AT END
                          MOVE ZEROS TO LK-LAST-ID

                       NOT AT END
                          MOVE RK-ACCOUNT-NUMBER TO LK-LAST-ID
                          ADD 1 TO LK-LAST-ID
                    END-READ
                 END-IF

              END-IF.

           CLOSE ACCOUNT-DF.

           GOBACK.
      *****************************************************************s