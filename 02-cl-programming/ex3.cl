        PGM         PARM(&FILE)
        DCL         VAR(&FILE) TYPE(*CHAR) LEN(10)
        DCL         VAR(&USER) TYPE(*CHAR) LEN(10)
        DCL         VAR(&REPLY) TYPE(*CHAR) LEN(1)

        RTVJOBA     CURUSER(&USER)
TOP:
        SNDPGMMSG   MSG(&USER *TCAT ' running REPORT with output +
                      file set to ' *CAT &FILE)
     /* CALL        PGM(REPORT) PARM(&FILE) */
        MONMSG      MSGID(CPF0000) EXEC(GOTO ERR)
        SNDPGMMSG   MSG('Completed running REPORT to ' *CAT +
                      &FILE) MSGTYPE(*COMP)
        GOTO END
ERR:
        SNDUSRMSG   MSG('Failure running REPORT to ' *CAT &FILE +
                      *TCAT '. Would you like to try it again? +
                      (Y or N)') VALUES(Y N) DFT(N) +
                      MSGTYPE(*INQ) MSGRPY(&REPLY)
        IF          COND(&REPLY *EQ  'Y') THEN(GOTO TOP)
        SNDPGMMSG   MSGID(CPF0006) MSGF(QCPFMSG)
END:
        ENDPGM
