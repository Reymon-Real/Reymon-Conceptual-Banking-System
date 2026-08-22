      * ###################################
      * ### Autor: Eduardo Pozos Huerta ###
      * ### Datum: 17. August. 2026     ###
      * ### Aktua: 17. August. 2026     ###
      * ### Lizenz: MIT                 ###
      * ###################################

      *****************************************************************
       FD TRANSACTION-DATA-FILE.
       01 KSDS-TRNC.
          02 KSDS-TRNC-ID PIC 9(18) COMP-5.

          02 KSDS-TRNC-COUNTRY-ORIGIN  PIC A(02) DISPLAY.
          02 KSDS-TRNC-COUNTRY-RECEIVE PIC A(02) DISPLAY.
           
          02 KSDS-TRNC-BANK-ORIGIN  PIC X(18) DISPLAY.
          02 KSDS-TRNC-BANK-RECEIVE PIC X(18) DISPLAY.
           
          02 KSDS-TRNC-ACCOUNT-NUMBER-ORIGIN  PIC 9(18) COMP-5.
          02 KSDS-TRNC-ACCOUNT-NUMBER-RECEIVE PIC 9(18) COMP-5.

          02 KSDS-TRNC-CURRENCY PIC A(03) DISPLAY.

          02 KSDS-TRNC-DATE-FORMAT.
             
             03 KSDS-TRNC-DATE.
                
                04 KSDS-TRNC-CURRENT-YEAR  PIC 9(4) DISPLAY.
                04 KSDS-TRNC-CURRENT-MONTH PIC 9(2) DISPLAY.
                04 KSDS-TRNC-CURRENT-DAY   PIC 9(2) DISPLAY.

             03 KSDS-TRNC-TIME.

                04 KSDA-TRNC-CURRENT-HOUR   PIC 9(2) DISPLAY.
                04 KSDA-TRNC-CURRENT-MINUTE PIC 9(2) DISPLAY.
                04 KSDA-TRNC-CURRENT-SECOND PIC 9(2) DISPLAY.
                04 KSDA-TRNC-CURRENT-MS     PIC 9(2) DISPLAY.
             
             03 KSDS-DIFF-FROM-GMT PIC S9(4) SIGN IS LEADING SEPARATE.
      *****************************************************************