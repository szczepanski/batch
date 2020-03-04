@echo off
color e

:menu_glowne
cls
@echo.
@echo ######################################################
@echo ## Witaj w programie do zarzadzania plikami ##
@echo ######################################################
@echo.
@echo opcje programu:
@echo 1 - utworz nowy plik
@echo 2 - edytuj plik
@echo 3 - otworz plik
@echo 4 - usun plik
@echo x - wyjscie z programu
@echo.
SET /P opcja=Wybierz jedna z powyzszych opcji (1 / 2 / 3 / 4 / x)
cls
IF /i {%opcja%}=={1} GOTO :opcja_1
IF /i {%opcja%}=={2} GOTO :opcja_2
IF /i {%opcja%}=={3} GOTO :opcja_3
IF /i {%opcja%}=={4} GOTO :opcja_4
IF /i {%opcja%}=={x} GOTO :opcja_x


:menu_powrotne
@echo wybierz opcje:
@echo 1 - utworz nowy plik
@echo 2 - edytuj plik
@echo 3 - otworz plik
@echo 4 - usun plik
@echo x - wyjscie z programu
SET /P opcja=
IF /i {%opcja%}=={1} GOTO :opcja_1
IF /i {%opcja%}=={2} GOTO :opcja_2
IF /i {%opcja%}=={3} GOTO :opcja_3
IF /i {%opcja%}=={4} GOTO :opcja_4
IF /i {%opcja%}=={x} GOTO :opcja_x


REM utworz nowy plik
:opcja_1
@echo Podaj folder gdzie chcesz umiescic nowy plik
@echo przyklad: C:\Users\filip\Desktop\nazwa_foldera\
SET /P folder=
SET /P plik=Podaj nazawe nowego pliku: 
md %folder%
@echo. 2>%folder%%plik%
@echo.
@echo **************************************************
@echo Nowy plik %plik% zostal utworzony w folderze:
@echo **************************************************
@echo %folder% 
@echo **************************************************
@echo.
GOTO menu_powrotne


REM edutuj plik
:opcja_2
@echo.
@echo Podaj lokalizacje i nazwe pliku ktory chcesz edytowac 
@echo przyklad: C:\Users\filip\Desktop\nazwa_foldera\nowy_plik
SET /P sciezka= 
SET /P tekst=Napisz co chcialbys dodac do pliku:  
@echo %tekst%>>%sciezka%
@echo.
@echo **************************************************
@echo Do pliku %sciezka% zostal dodany nastepujacy tekst:
@echo **************************************************
@echo %tekst% 
@echo **************************************************
@echo.
GOTO menu_powrotne


REM otworz plik
:opcja_3
@echo.
@echo Podaj lokalizacje i nazwe pliku ktory chcesz otworzyc 
@echo przyklad: C:\Users\filip\Desktop\nazwa_foldera\nowy_plik
SET /P sciezka=
start %sciezka%
@echo.
GOTO menu_powrotne


REM usun plik
:opcja_4
@echo.
@echo Podaj lokalizacje i nazwe pliku ktory chcesz usunac 
@echo przyklad: C:\Users\filip\Desktop\nazwa_foldera\nowy_plik
SET /P sciezka= 
del %sciezka% >nul 2>&1
@echo.
@echo **************************************************
@echo Plik %sciezka% zostal usuniety
@echo **************************************************
@echo.
GOTO menu_powrotne


REM REM wyjscie z programu
:opcja_x
@echo Do zobaczenia !
timeout 1 > nul
exit