@echo off


SET /P ODPOWIEDZ_1=Witaj, Czy chcesz sprawdzic moj program? (t/n)
cls
IF /i {%ODPOWIEDZ_1%}=={t} GOTO :tak
IF /i {%ODPOWIEDZ_1%}=={tak} GOTO :tak
IF /i {%ODPOWIEDZ_1%}=={n} GOTO :nie
IF /i {%ODPOWIEDZ_1%}=={nie} GOTO :nie


:tak
@echo ooo!, dzieki :)
SET /P ODPOWIEDZ_2=Chcesz zobaczyc maly trik? (t/n)
cls
timeout 1 > nul
cls
IF /i {%ODPOWIEDZ_2%}=={t} GOTO :trik
IF /i {%ODPOWIEDZ_2%}=={tak} GOTO :trik
IF /i {%ODPOWIEDZ_2%}=={n} GOTO :koniec_nie
IF /i {%ODPOWIEDZ_2%}=={nie} GOTO :koniec_nie
GOTO :koniec_tak


:nie
cls
@echo hmm...szkoda :(
timeout 1 > nul
cls
GOTO :koniec_nie


:trik
@echo .
@echo .
@echo #############
@echo ## BOOOOM! ##
@echo #############
@echo .
@echo .


timeout 2 > nul
start https://google.pl
exit


:koniec_tak
@echo swietnie, dziekuje za wyprobowanie
timeout 1 > nul
exit


:koniec_nie
@echo hmm... moze innym razem
timeout 1 > nul
exit





