      * ###################################
      * ### Autor: Eduardo Pozos Huerta ###
      * ### Datum: 17. August. 2026     ###
      * ### Aktua: 17. August. 2026     ###
      * ### Lizenz: MIT                 ###
      * ###################################

       77 WS-TRANSACTION-FST PIC X(02) DISPLAY.
       01 WS-TRANSACTION.
          02 WS-TRANSACTION-ID                  PIC 9(18) COMP-5.
          
          02 WS-TRANSACTION-TYPE                PIC 9(04) COMP-5.
              88 WS-TRANSACTION-TYPE-DEPOSIT  VALUE 0.
              88 WS-TRANSACTION-TYPE-TRANSFER VALUE 1.
              88 WS-TRANSACTION-TYPE-WITHDRAW VALUE 2.

          02 WS-TRANSACTION-ORIGIN-ACCOUNT-FID  PIC X(18) DISPLAY.
          02 WS-TRANSACTION-RECEIVE-ACCOUNT-FID PIC X(18) DISPLAY.
          02 WS-TRANSATCION-ORIGIN-BANK-FID     PIC X(18) DISPLAY.
          02 WS-TRANSATCION-RECEIVE-BANK-FID    PIC X(18) DISPLAY.
          02 WS-TRANSACTION-ORIGIN-CURRENCY     PIC A(03) DISPLAY.
          02 WS-TRANSACTION-RECEIVE-CURRENCY    PIC A(03) DISPLAY.
          02 WS-TRANSACTION-ORIGIN-COUNTRY      PIC A(02) DISPLAY.
          02 WS-TRANSACTION-RECEIVE-COUNTRY     PIC A(02) DISPLAY.
          
          02 WS-TRANSACTION-AMOUNT PIC S9(32)V9(5) COMP-3.