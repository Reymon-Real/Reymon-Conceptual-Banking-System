      * ###################################
      * ### Autor: Eduardo Pozos Huerta ###
      * ### Datum: 17. August. 2026     ###
      * ### Aktua: 17. August. 2026     ###
      * ### Lizenz: MIT                 ###
      * ###################################

       77 WS-ACCOUNT-FST PIC X(02) DISPLAY.

       01 WS-ACCOUNT.
          02 WS-ACCOUNT-NUMBER          PIC X(18)  VALUE ZEROS DISPLAY.
          02 WS-ACCOUNT-FISCAL-ID       PIC X(18)  VALUE SPACE DISPLAY.
          02 WS-ACCOUNT-GOV-TYPE        PIC X(18)  VALUE SPACE DISPLAY.
          02 WS-ACCOUNT-BANK-TYPE       PIC X(18)  VALUE SPACE DISPLAY.
          02 WS-ACCOUNT-OWNER-FULL-NAME PIC X(255) VALUE SPACE DISPLAY.
          02 WS-ACCOUNT-OWNER-FISCAL-ID PIC X(18)  VALUE SPACE DISPLAY.
          02 WS-ACCOUNT-OWNER-GOV-ID    PIC X(18)  VALUE SPACE DISPLAY.
          02 WS-ACCOUNT-CURRENCY        PIC A(03)  VALUE SPACE DISPLAY.