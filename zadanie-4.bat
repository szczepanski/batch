@echo off
color a

:menu_glowne
cls
@echo.
@echo #####################################
@echo ## Witaj w nowym programie Filipa! ##
@echo #####################################
@echo.
@echo opcje programu:
@echo 1 - kalkulacja pola prostokata
@echo 2 - liczenie plikow wybranego rodzaju
@echo x - wyjscie z programu
@echo.
SET /P opcja=Wybierz jedna z powyzszych opcji (1/2/x)
cls
IF /i {%opcja%}=={1} GOTO :opcja_1
IF /i {%opcja%}=={2} GOTO :opcja_2
IF /i {%opcja%}=={x} GOTO :opcja_x


:menu_powrotne
@echo wybierz opcje:
@echo 1 - kalkulacja pola prostokata
@echo 2 - liczenie plikow wybranego rodzaju
@echo x - wyjscie z programu
SET /P opcja=
IF /i {%opcja%}=={1} GOTO :opcja_1
IF /i {%opcja%}=={2} GOTO :opcja_2
IF /i {%opcja%}=={x} GOTO :opcja_x


REM pole prostokata
:opcja_1
@echo.
@echo #####################################
@echo Witaj w programie liczacym pola prostokatow :)
@echo #####################################
@echo.
SET /P bok_a=Podaj wartosc pierwszego boku: (cm) 
SET /P bok_b=Podaj wartosc drugiego boku: (cm) 
SET /A wynik = %bok_a% * %bok_b%
@echo.
@echo **************************************************
@echo Pole prostokata o wymiarach %bok_a%cm x %bok_b%cm wynosi:
@echo **************************************************
@echo %wynik% cm2
@echo **************************************************
@echo.
GOTO menu_powrotne

REM liczenie plikow
:opcja_2
@echo.
@echo #####################################
@echo Witaj w programie liczacym pliki w podanym folderze
@echo #####################################
@echo.
set licznik=0
SET /P typ_pliku=Podaj rodzaj plikow ktore chcesz policzyc (txt / jpg / html / inne..) 
SET /P folder=Teraz, podaj sciezke folderu w ktorym chcesz policzyc pliki (np: C:\Users\filip\Desktop\nazwa_foldera\) 
@echo.
for %%A in (%folder%*.%typ_pliku%) do set /a licznik+=1
@echo **************************************************
@echo Liczba plikow typu %typ_pliku% w folderze %folder%
@echo **************************************************
@echo %licznik%
@echo **************************************************
@echo.
@echo.
GOTO menu_powrotne

REM wyjscie z programu
:opcja_x
@echo Do zobaczenia !
timeout 1 > nul
exit




REM :tak
REM @echo ooo!, dzieki :)
REM SET /P ODPOWIEDZ_2=Chcesz zobaczyc maly trik? (t/n)
REM cls
REM timeout 1 > nul
REM cls
REM IF /i {%ODPOWIEDZ_2%}=={t} GOTO :trik
REM IF /i {%ODPOWIEDZ_2%}=={tak} GOTO :trik
REM IF /i {%ODPOWIEDZ_2%}=={n} GOTO :koniec_nie
REM IF /i {%ODPOWIEDZ_2%}=={nie} GOTO :koniec_nie
REM GOTO :koniec_tak


REM :nie
REM cls
REM @echo hmm...szkoda :(
REM timeout 1 > nul
REM cls
REM GOTO :koniec_nie


REM :trik
REM @echo .
REM @echo .
REM @echo #############
REM @echo ## BOOOOM! ##
REM @echo #############
REM @echo .
REM @echo .


REM timeout 2 > nul
REM start https://google.pl
REM exit


REM :koniec_tak
REM @echo swietnie, dziekuje za wyprobowanie
REM timeout 1 > nul
REM exit


REM :koniec_nie
REM @echo hmm... moze innym razem
REM timeout 1 > nul
REM exit





