      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. rcbs_get_account_number IS INITIAL.
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

       WORKING-STORAGE SECTION.
       COPY "account/ws.cpy".
       COPY "account/getoper.cpy".

       77 WS-LAST-ID PIC 9(18) COMP-5.

       LINKAGE SECTION.
       COPY "account/ls.cpy".

       77 LS-LAST-ID PIC 9(18) COMP-5.
       77 LS-ACCOUNT-OPERATION PIC A(10) DISPLAY.
      *****************************************************************

      *****************************************************************
       PROCEDURE DIVISION
       USING     LS-ACCOUNT-OPERATION
       RETURNING LS-LAST-ID.

           OPEN INPUT RCBS-ACCOUNT-DF.
              
              EVALUATE LS-ACCOUNT-OPERATION
              
                 WHEN ENUM-GET-ACC-LA
                    
                    MOVE HIGH-VALUES TO RK-RCBS-ACCOUNT-NUMBER
                    
                    START RCBS-ACCOUNT-DF
                    
                       KEY IS LESS THAN RK-RCBS-ACCOUNT-NUMBER
                    
                       INVALID KEY
                          MOVE ZERO TO LS-LAST-ID
                    
                    END-START

                    IF WS-RCBS-ACCOUNT-FST EQUAL "00"
                       
                       READ RCBS-ACCOUNT-DF PREVIOUS
                          AT END
                          
                             MOVE ZEROS TO LS-LAST-ID
                          
                          NOT AT END
                             MOVE RK-RCBS-ACCOUNT-NUMBER TO LS-LAST-ID

                          END-READ
                    
                    END-IF
                  
                 WHEN ENUM-GET-ACC-AN

                    MOVE HIGH-VALUES TO RK-RCBS-ACCOUNT-NUMBER
                    
                    START RCBS-ACCOUNT-DF
                    
                       KEY IS LESS THAN RK-RCBS-ACCOUNT-NUMBER
                    
                       INVALID KEY
                          MOVE ZERO TO LS-LAST-ID
                    
                    END-START

                    IF WS-RCBS-ACCOUNT-FST EQUAL "00"
                       
                       READ RCBS-ACCOUNT-DF PREVIOUS
                          AT END
                          
                             MOVE ZEROS TO LS-LAST-ID
                          
                          NOT AT END
                             MOVE RK-RCBS-ACCOUNT-NUMBER TO LS-LAST-ID

                          END-READ
                    
                    END-IF
              
              END-EVALUATE.

           CLOSE RCBS-ACCOUNT-DF.

           GOBACK.
      *****************************************************************s