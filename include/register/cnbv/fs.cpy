      * ###################################
      * ### Autor: Eduardo Pozos Huerta ###
      * ### Datum: 17. August. 2026     ###
      * ### Aktua: 17. August. 2026     ###
      * ### Lizenz: MIT                 ###
      * ###################################

      *****************************************************************
       FD RCBS-CNBV-DF.
       01 FS-RCBS-CNBV.
          02 RK-CNBV-ID PIC X(18) DISPLAY.

          02 ARK-CNBV-COUNTRY-ORIGIN  PIC A(02) DISPLAY.
          02 ARK-CNBV-COUNTRY-RECEIVE PIC A(02) DISPLAY.
           
          02 ARK-CNBV-BANK-ORIGIN  PIC X(18) DISPLAY.
          02 ARK-CNBV-BANK-RECEIVE PIC X(18) DISPLAY.
           
          02 ARK-CNBV-ACCOUNT-NUMBER-ORIGIN  PIC 9(18) COMP-5.
          02 ARK-CNBV-ACCOUNT-NUMBER-RECEIVE PIC 9(18) COMP-5.

          02 ARK-CNBV-CURRENCY PIC A(03) DISPLAY.

          02 ARK-CNBV-DATE-FORMAT.
             
             03 ARK-CNBV-DATE.
                
                04 KSDS-TRNC-CURRENT-YEAR  PIC 9(4) DISPLAY.
                04 KSDS-TRNC-CURRENT-MONTH PIC 9(2) DISPLAY.
                04 KSDS-TRNC-CURRENT-DAY   PIC 9(2) DISPLAY.

             03 ARK-CNBV-TIME.

                04 KSDA-TRNC-CURRENT-HOUR   PIC 9(2) DISPLAY.
                04 KSDA-TRNC-CURRENT-MINUTE PIC 9(2) DISPLAY.
                04 KSDA-TRNC-CURRENT-SECOND PIC 9(2) DISPLAY.
                04 KSDA-TRNC-CURRENT-MS     PIC 9(2) DISPLAY.
             
             03 ARK-CNBV-DIFF-FROM-GMT PIC S9(4)
                SIGN IS LEADING SEPARATE.
      *****************************************************************