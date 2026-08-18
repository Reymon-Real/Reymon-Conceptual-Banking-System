      * ###################################
      * ### Autor: Eduardo Pozos Huerta ###
      * ### Datum: 17. August. 2026     ###
      * ### Aktua: 17. August. 2026     ###
      * ### Lizenz: MIT                 ###
      * ###################################

       FD BANK-ACCOUNT-DATA-FILE.
       01 KSDS-BANK-ACCOUNT.
          02 KSDS-BANK-ACCOUNT-NUMBER          PIC 9(18)  COMP-5.
          02 KSDS-BANK-FISCAL-ID               PIC X(18)  DISPLAY.
          02 KSDS-BANK-ACCOUNT-GOV-TYPE        PIC X(18)  DISPLAY.
          02 KSDS-BANK-ACCOUNT-BANK-TYPE       PIC X(18)  DISPLAY. 
          02 KSDS-BANK-ACCOUNT-OWNER-FULL-NAME PIC X(255) DISPLAY.
          02 KSDS-BANK-ACCOUNT-OWNER-FISCAL-ID PIC X(18)  DISPLAY.
          02 KSDS-BANK-ACCOUNT-OWNER-GOV-ID    PIC X(18)  DISPLAY.
          02 KSDS-BANK-ACCOUNT-CURRENCY        PIC A(03)  DISPLAY.
          02 KSDS-BANK-ACCOUNT-CURRENCY-MOUNT  PIC 9(18)V9(05) COMP-3.