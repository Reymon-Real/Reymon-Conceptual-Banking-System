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
          USING BY REFERENCE LK-TRANSACTION
          RETURNING LK-STATE.

            OPEN I-O ACCOUNT-DF TRANSACTION-DF.

               MOVE LK-TRANSACTION TO WS-TRANSACTION.
               
      *****************************************************************
               EVALUATE TRUE

               WHEN WS-TRANSACTION-TYPE-DEPOSIT

                  PERFORM ACCOUNT-VERIFICATION

                  ADD WS-TRANSACTION-AMOUNT TO ARK-ACCOUNT-AMOUNT
                  REWRITE FS-ACCOUNT

      *****************************************************************
               WHEN WS-TRANSACTION-TYPE-WITHDRAW

                  PERFORM ACCOUNT-VERIFICATION

                  SUBTRACT WS-TRANSACTION-AMOUNT
                  FROM ARK-ACCOUNT-AMOUNT
                  REWRITE FS-ACCOUNT
               
      *****************************************************************
               WHEN WS-TRANSACTION-TYPE-TRANSFER

                  PERFORM ACCOUNT-VERIFICATION

                  ADD WS-TRANSACTION-AMOUNT TO ARK-ACCOUNT-AMOUNT
                  REWRITE FS-ACCOUNT

                  MOVE WS-TRANSACTION-ORIGIN-ACCOUNT-FID
                  TO RK-ACCOUNT-NUMBER

                  READ FS-ACCOUNT NOT INVALID KEY CONTINUE

                  SUBTRACT WS-TRANSACTION-AMOUNT
                  FROM ARK-ACCOUNT-AMOUNT
                  REWRITE FS-ACCOUNT

               END-EVALUATE.
      *****************************************************************

            CLOSE ACCOUNT-DF TRANSACTION-DF.

           GOBACK.

       ACCOUNT-VERIFICATION.
         MOVE WS-TRANSACTION-ORIGIN-ACCOUNT-FID TO RK-ACCOUNT-NUMBER

         READ FS-ACCOUNT
            INVALID KEY
               SET LS-STATE-FAILURE TO TRUE
               MOVE LS-STATE TO LK-STATE
               CLOSE ACCOUNT-DF TRANSACTION-DF
               GOBACK
                  
               NOT INVALID KEY
                  CONTINUE
        
         END-READ

         MOVE WS-TRANSACTION-RECEIVE-ACCOUNT-FID TO RK-ACCOUNT-NUMBER

         READ FS-ACCOUNT
            INVALID KEY
               SET LS-STATE-FAILURE TO TRUE
               MOVE LS-STATE TO LK-STATE
               CLOSE ACCOUNT-DF TRANSACTION-DF
               GOBACK
                  
            NOT INVALID KEY
               CONTINUE
         
         END-READ

         WRITE FS-TRANSACTION FROM WS-TRANSACTION
      *****************************************************************