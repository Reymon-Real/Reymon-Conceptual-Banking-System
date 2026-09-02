      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. main.
       AUTHOR. Reymon Dev.
       DATE-WRITTEN.  18. April. 2026
       DATE-COMPILED. 17. August. 2026
      *****************************************************************

      *****************************************************************
       ENVIRONMENT DIVISION.
      *****************************************************************

      *****************************************************************
       DATA DIVISION.

       WORKING-STORAGE SECTION.
       COPY "account/ws.cpy".
       COPY "register/bank/ws.cpy".
       COPY "report/cnbv/R01/A0111/ws.cpy".
       
       01 WS-CREATE PIC A(10)  VALUE SPACES.
          88 WS-CREATE-BANK    VALUE "BANK".
          88 WS-CREATE-ACCOUNT VALUE "ACCOUNT".

       01 WS-DELETE PIC A(10) VALUE SPACES.
          88 WS-DELETE-BANK    VALUE "BANK".
          88 WS-DELETE-ACCOUNT VALUE "ACCOUNT".

       01 WS-OPERATION PIC A(08)   VALUE SPACES.
          88 WS-OPERATION-CREATE   VALUE "CREATE".
          88 WS-OPERATION-DELETE   VALUE "DELETE".
          88 WS-OPERATION-DEPOSIT  VALUE "DEPOSIT".
          88 WS-OPERATION-TRANSFER VALUE "TRANSFER". 
          88 WS-OPERATION-WITHDRAW VALUE "WITHDRAW".
          88 WS-OPERATION-EXIT     VALUE "EXIT".
       
       77 b pic X(001) display.
       77 c pic x(002) display.

       77 UBS-ACCOUNT-DF-PEOPLE PIC X(255)
            VALUE "test/UBS/account/people.db".
      *****************************************************************

      *****************************************************************
       PROCEDURE DIVISION.

           CALL "rcbs_account_init" USING UBS-ACCOUNT-DF-PEOPLE.
           CALL "rcbs_register_bank_init".

           PERFORM UNTIL WS-OPERATION-EXIT

               DISPLAY "Enter de option"
               DISPLAY "* Create"
               DISPLAY "* Delete"
               DISPLAY "* Deposit"
               DISPLAY "* Transfer"
               DISPLAY "* Withdraw"
               DISPLAY "* Exit"

               DISPLAY SPACE
               DISPLAY "RCBS> " WITH NO ADVANCING

               ACCEPT WS-OPERATION
               MOVE FUNCTION UPPER-CASE(WS-OPERATION) TO WS-OPERATION

               DISPLAY SPACE

               EVALUATE TRUE
                
                *>*****************************************************
                  WHEN WS-OPERATION-CREATE

                    DISPLAY SPACE

                    DISPLAY "Select Option"
                    DISPLAY "* Bank"
                    DISPLAY "* Account"
                    
                    DISPLAY SPACE
                    DISPLAY "RCBS> " WITH NO ADVANCING
                    
                    ACCEPT WS-CREATE
                    MOVE FUNCTION UPPER-CASE(WS-CREATE) TO WS-CREATE
                    
                    DISPLAY SPACE

                    EVALUATE TRUE

                    WHEN WS-CREATE-BANK

                      DISPLAY
                        "RCBS> Country of the bank: "
                        WITH NO ADVANCING
                      END-DISPLAY

                    ACCEPT WS-REGISTER-BANK-COUNTRY

                    DISPLAY
                      "RCBS> Enter Fiscal ID of the bank: "
                        WITH NO ADVANCING
                    END-DISPLAY

                    ACCEPT WS-REGISTER-BANK-FID

                    DISPLAY
                      "RCBS> Enter the bank name: "
                      WITH NO ADVANCING
                    END-DISPLAY

                    ACCEPT WS-REGISTER-BANK-NAME

                    CALL "rcbs_register_bank_create"
                      USING WS-REGISTER-BANK
                    END-CALL

                    END-EVALUATE

                    DISPLAY SPACE

                *>*****************************************************
                  WHEN WS-OPERATION-DELETE

                    DISPLAY SPACE

                    DISPLAY "Select the option"
                    DISPLAY "* Bank"
                    DISPLAY "* Account"
                    
                    DISPLAY SPACE
                    DISPLAY "RCBS> " WITH NO ADVANCING
                    
                    ACCEPT WS-DELETE
                    MOVE FUNCTION UPPER-CASE(WS-DELETE) TO WS-DELETE
                    
                    DISPLAY SPACE

                    EVALUATE TRUE

                      WHEN WS-DELETE-BANK

                        DISPLAY
                          "RCBS> Enter Fiscal ID of the bank: "
                          WITH NO ADVANCING
                        END-DISPLAY

                        ACCEPT WS-REGISTER-BANK-FID

                        CALL "rcbs_register_bank_delete"
                          USING WS-REGISTER-BANK
                        END-CALL

                *>*****************************************************
                  WHEN WS-OPERATION-DEPOSIT

                    DISPLAY "Deposit"
                    DISPLAY SPACE

                *>*****************************************************
                  WHEN WS-OPERATION-TRANSFER

                    DISPLAY "Transfer"
                    DISPLAY SPACE

                *>*****************************************************
                  WHEN WS-OPERATION-WITHDRAW

                    DISPLAY "Withdraw"
                    DISPLAY SPACE

                *>*****************************************************
                  WHEN OTHER

                     IF NOT WS-OPERATION-EXIT
                        DISPLAY "Unrecognized Operation: " WS-OPERATION
                        DISPLAY SPACE
                     END-IF

               END-EVALUATE

           END-PERFORM.
           
           STOP RUN.
      *****************************************************************