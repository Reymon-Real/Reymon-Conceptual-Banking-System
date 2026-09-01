      * ###################################
      * ### Autor: Eduardo Pozos Huerta ###
      * ### Datum: 17. August. 2026     ###
      * ### Aktua: 17. August. 2026     ###
      * ### Lizenz: MIT                 ###
      * ###################################

       FD ACCOUNT-DF.
       01 FS-ACCOUNT.
          02 RK-ACCOUNT-NUMBER           PIC X(18)  DISPLAY.
          02 ARK-ACCOUNT-FISCAL-ID       PIC X(18)  DISPLAY.
          02 ARK-ACCOUNT-GOV-TYPE        PIC X(18)  DISPLAY.
          02 ARK-ACCOUNT-BANK-TYPE       PIC X(18)  DISPLAY. 
          02 ARK-ACCOUNT-OWNER-FULL-NAME PIC X(255) DISPLAY.
          02 ARK-ACCOUNT-OWNER-FISCAL-ID PIC X(18)  DISPLAY.
          02 ARK-ACCOUNT-OWNER-GOV-ID    PIC X(18)  DISPLAY.
          02 ARK-ACCOUNT-CURRENCY        PIC A(03)  DISPLAY.
          
          02 ARK-ACCOUNT-AMOUNT PIC 9(18)V9(05) COMP-3.