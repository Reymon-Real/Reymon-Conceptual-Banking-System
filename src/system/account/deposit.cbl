      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. rcbs_account_deposit IS RECURSIVE.
       AUTHOR. Reymon Dev.
       DATE-WRITTEN.  18. April. 2026
       DATE-COMPILED. 18. August. 2026
      *****************************************************************

      *****************************************************************
       ENVIRONMENT DIVISION.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       COPY "register/transaction/fc.cpy".
       COPY "account/fc.cpy".
      *****************************************************************

      *****************************************************************
       DATA DIVISION.

       FILE SECTION.
       COPY "register/transaction/fs.cpy".
       COPY "account/fs.cpy".

       WORKING-STORAGE SECTION.
       COPY "register/transaction/ws.cpy".
       COPY "account/ws.cpy".

       LOCAL-STORAGE SECTION.
       
       01 LS-STATE PIC 9(18) COMP-5.
          88 LS-STATE-SUCCESS VALUE 1.
          88 LS-STATE-FAILURE VALUE ZERO.

       LINKAGE SECTION.

       01 LK-STATE PIC 9(18) COMP-5.
       
       COPY "register/transaction/lk.cpy".
       COPY "register/bank/lk.cpy".
       COPY "account/lk.cpy".
      *****************************************************************

      *****************************************************************
       PROCEDURE DIVISION
          USING BY REFERENCE LK-ACCOUNT-DF-NAME LK-TRANSACTION
          RETURNING LK-STATE.

            OPEN I-O ACCOUNT-DF TRANSACTION-DF.

            MOVE LK-TRANSACTION TO WS-TRANSACTION.
            
            IF NOT WS-TRANSACTION-TYPE-DEPOSIT

              SET LS-STATE-FAILURE TO TRUE
              MOVE LS-STATE TO LK-STATE

            END-IF.

            MOVE WS-TRANSACTION-ORIGIN-ACCOUNT-FID TO RK-ACCOUNT-NUMBER

            READ ACCOUNT-DF
              INVALID KEY
                SET LS-STATE-FAILURE TO TRUE
                MOVE LS-STATE TO LK-STATE
                CLOSE ACCOUNT-DF TRANSACTION-DF
                GOBACK
            END-READ.

            MOVE HIGH-VALUES TO RK-TRANSACTION-ID.

            START TRANSACTION-DF KEY IS LESS THAN RK-TRANSACTION-ID
              INVALID KEY CONTINUE
            END-START.

            READ TRANSACTION-DF PREVIOUS
              INVALID KEY
                MOVE ZERO TO RK-TRANSACTION-ID
              
              NOT INVALID KEY
                ADD 1 TO RK-TRANSACTION-ID
                MOVE RK-TRANSACTION-ID TO WS-TRANSACTION-ID

            END-READ.

            WRITE FS-TRANSACTION FROM WS-TRANSACTION.

            ADD WS-TRANSACTION-AMOUNT TO ARK-ACCOUNT-AMOUNT.
            REWRITE FS-ACCOUNT.

            SET LS-STATE-SUCCESS TO TRUE
            MOVE LS-STATE TO LK-STATE.

            CLOSE ACCOUNT-DF TRANSACTION-DF.

           GOBACK.
      *****************************************************************