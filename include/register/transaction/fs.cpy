      * ###############################
      * ### Autor: Reymon Dev       ###
      * ### Datum: 17. August. 2026 ###
      * ### Aktua: 17. August. 2026 ###
      * ### Lizenz: MIT             ###
      * ###############################

       FD TRANSACTION-DF.
       01 FS-TRANSACTION.
          02 RK-TRANSACTION-ID                   PIC 9(18) COMP-5.
          02 ARK-TRANSACTION-TYPE                PIC 9(04) COMP-5.
          02 ARK-TRANSACTION-ORIGIN-ACCOUNT-FID  PIC X(18) DISPLAY.
          02 ARK-TRANSACTION-RECEIVE-ACCOUNT-FID PIC X(18) DISPLAY.
          02 ARK-TRANSATCION-ORIGIN-BANK-FID     PIC X(18) DISPLAY.
          02 ARK-TRANSATCION-RECEIVE-BANK-FID    PIC X(18) DISPLAY.
          02 ARK-TRANSACTION-ORIGIN-CURRENCY     PIC A(03) DISPLAY.
          02 ARK-TRANSACTION-RECEIVE-CURRENCY    PIC A(03) DISPLAY.
          02 ARK-TRANSACTION-ORIGIN-COUNTRY      PIC A(02) DISPLAY.
          02 ARK-TRANSACTION-RECEIVE-COUNTRY     PIC A(02) DISPLAY.
          
          02 ARK-TRANSACTION-AMOUNT PIC S9(32)V9(5) COMP-3.