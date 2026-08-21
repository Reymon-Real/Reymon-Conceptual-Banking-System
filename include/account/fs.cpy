      * ###################################
      * ### Autor: Eduardo Pozos Huerta ###
      * ### Datum: 17. August. 2026     ###
      * ### Aktua: 17. August. 2026     ###
      * ### Lizenz: MIT                 ###
      * ###################################

       FD RCBS-ACCOUNT-DF.
       01 FS-RCBS-ACCOUNT.
          02 RK-RCBS-ACCOUNT-NUMBER           PIC X(18)  DISPLAY.
          02 ARK-RCBS-FISCAL-ID               PIC X(18)  DISPLAY.
          02 ARK-RCBS-ACCOUNT-GOV-TYPE        PIC X(18)  DISPLAY.
          02 ARK-RCBS-ACCOUNT-BANK-TYPE       PIC X(18)  DISPLAY. 
          02 ARK-RCBS-ACCOUNT-OWNER-FULL-NAME PIC X(255) DISPLAY.
          02 ARK-RCBS-ACCOUNT-OWNER-FISCAL-ID PIC X(18)  DISPLAY.
          02 ARK-RCBS-ACCOUNT-OWNER-GOV-ID    PIC X(18)  DISPLAY.
          02 ARK-RCBS-ACCOUNT-CURRENCY        PIC A(03)  DISPLAY.
          02 ARK-RCBS-ACCOUNT-CURRENCY-MOUNT  PIC 9(18)V9(05) COMP-3.