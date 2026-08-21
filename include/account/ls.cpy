      * ###################################
      * ### Autor: Eduardo Pozos Huerta ###
      * ### Datum: 17. August. 2026     ###
      * ### Aktua: 17. August. 2026     ###
      * ### Lizenz: MIT                 ###
      * ###################################
       
       77 LS-RCBS-ACCOUNT-DF-NAME PIC A(255) DISPLAY.

       01 LS-RCBS-ACCOUNT.
          02 LS-RCBS-ACCOUNT-NUMBER          PIC 9(18)  COMP-5.
          02 LS-RCBS-FISCAL-ID               PIC X(18)  DISPLAY.
          02 LS-RCBS-ACCOUNT-GOV-TYPE        PIC X(18)  DISPLAY.
          02 LS-RCBS-ACCOUNT-BANK-TYPE       PIC X(18)  DISPLAY.
          02 LS-RCBS-ACCOUNT-OWNER-FULL-NAME PIC X(255) DISPLAY.
          02 LS-RCBS-ACCOUNT-OWNER-FISCAL-ID PIC X(18)  DISPLAY.
          02 LS-RCBS-ACCOUNT-OWNER-GOV-ID    PIC X(18)  DISPLAY.
          02 LS-RCBS-ACCOUNT-CURRENCY        PIC A(03)  DISPLAY.
          02 LS-RCBS-ACCOUNT-CURRENCY-MOUNT  PIC 9(18)V9(05) COMP-3.