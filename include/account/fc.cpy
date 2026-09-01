      * ###################################
      * ### Autor: Eduardo Pozos Huerta ###
      * ### Datum: 17. August. 2026     ###
      * ### Aktua: 17. August. 2026     ###
      * ### Lizenz: MIT                 ###
      * ###################################

           SELECT OPTIONAL ACCOUNT-DF
           ASSIGN TO LK-ACCOUNT-DF-NAME
           ORGANIZATION IS INDEXED
           ACCESS IS DYNAMIC
           RECORD KEY IS RK-ACCOUNT-NUMBER
           ALTERNATE RECORD KEY IS ARK-ACCOUNT-FISCAL-ID
           ALTERNATE RECORD KEY IS ARK-ACCOUNT-GOV-TYPE
           ALTERNATE RECORD KEY IS ARK-ACCOUNT-BANK-TYPE
           ALTERNATE RECORD KEY IS ARK-ACCOUNT-OWNER-FULL-NAME
           ALTERNATE RECORD KEY IS ARK-ACCOUNT-OWNER-FISCAL-ID
           ALTERNATE RECORD KEY IS ARK-ACCOUNT-OWNER-GOV-ID
           ALTERNATE RECORD KEY IS ARK-ACCOUNT-CURRENCY
           ALTERNATE RECORD KEY IS ARK-ACCOUNT-AMOUNT
           FILE STATUS IS WS-ACCOUNT-FST.