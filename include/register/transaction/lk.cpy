      * ###############################
      * ### Autor: Reymon Dev       ###
      * ### Datum: 17. August. 2026 ###
      * ### Aktua: 17. August. 2026 ###
      * ### Lizenz: MIT             ###
      * ###############################

       01 LK-TRANSACTION.
         02 LK-TRANSACTION-ID                  PIC 9(18) COMP-5.
         02 LK-TRANSACTION-TYPE                PIC 9(04) COMP-5.
         02 LK-TRANSACTION-ORIGIN-ACCOUNT-FID  PIC X(18) DISPLAY.
         02 LK-TRANSACTION-RECEIVE-ACCOUNT-FID PIC X(18) DISPLAY.
         02 LK-TRANSATCION-ORIGIN-BANK-FID     PIC X(18) DISPLAY.
         02 LK-TRANSATCION-RECEIVE-BANK-FID    PIC X(18) DISPLAY.
         02 LK-TRANSACTION-ORIGIN-CURRENCY     PIC A(03) DISPLAY.
         02 LK-TRANSACTION-RECEIVE-CURRENCY    PIC A(03) DISPLAY.
         02 LK-TRANSACTION-ORIGIN-COUNTRY      PIC A(02) DISPLAY.
         02 LK-TRANSACTION-RECEIVE-COUNTRY     PIC A(02) DISPLAY.
         
         02 LK-TRANSACTION-AMOUNT PIC S9(32)V9(5) COMP-3.