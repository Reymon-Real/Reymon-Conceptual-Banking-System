      * ###################################
      * ### Autor: Eduardo Pozos Huerta ###
      * ### Datum: 17. August. 2026     ###
      * ### Aktua: 17. August. 2026     ###
      * ### Lizenz: MIT                 ###
      * ###################################
       
       77 LK-ACCOUNT-DF-NAME PIC A(255) DISPLAY.

       01 LK-ACCOUNT.
          02 LK-ACCOUNT-NUMBER          PIC 9(18)  COMP-5.
          02 LK-ACCOUNT-FISCAL-ID       PIC X(18)  DISPLAY.
          02 LK-ACCOUNT-GOV-TYPE        PIC X(18)  DISPLAY.
          02 LK-ACCOUNT-BANK-TYPE       PIC X(18)  DISPLAY.
          02 LK-ACCOUNT-OWNER-FULL-NAME PIC X(255) DISPLAY.
          02 LK-ACCOUNT-OWNER-FISCAL-ID PIC X(18)  DISPLAY.
          02 LK-ACCOUNT-OWNER-GOV-ID    PIC X(18)  DISPLAY.
          02 LK-ACCOUNT-CURRENCY        PIC A(03)  DISPLAY.
          
          02 LK-ACCOUNT-AMOUNT PIC 9(18)V9(05) COMP-3.