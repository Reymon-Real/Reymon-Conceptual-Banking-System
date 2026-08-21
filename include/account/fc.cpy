      * ###################################
      * ### Autor: Eduardo Pozos Huerta ###
      * ### Datum: 17. August. 2026     ###
      * ### Aktua: 17. August. 2026     ###
      * ### Lizenz: MIT                 ###
      * ###################################

           SELECT OPTIONAL RCBS-ACCOUNT-DF
           ASSIGN TO "test/account.db"
           ORGANIZATION IS INDEXED
           ACCESS IS DYNAMIC
           RECORD KEY IS RK-RCBS-ACCOUNT-NUMBER
           ALTERNATE RECORD KEY IS ARK-RCBS-FISCAL-ID
           ALTERNATE RECORD KEY IS ARK-RCBS-ACCOUNT-GOV-TYPE
           ALTERNATE RECORD KEY IS ARK-RCBS-ACCOUNT-BANK-TYPE
           ALTERNATE RECORD KEY IS ARK-RCBS-ACCOUNT-OWNER-FULL-NAME
           ALTERNATE RECORD KEY IS ARK-RCBS-ACCOUNT-OWNER-FISCAL-ID
           ALTERNATE RECORD KEY IS ARK-RCBS-ACCOUNT-OWNER-GOV-ID
           ALTERNATE RECORD KEY IS ARK-RCBS-ACCOUNT-CURRENCY
           ALTERNATE RECORD KEY IS ARK-RCBS-ACCOUNT-CURRENCY-MOUNT
           FILE STATUS IS WS-RCBS-ACCOUNT-FST.