@echo off
setlocal enabledelayedexpansion

REM Πληκτρολόγησε τα ονόματα των φακέλων στη σειρά που θέλεις
set "folders=Office"

REM Πλήρες μονοπάτι της Επιφάνειας Εργασίας
set "desktop_path=C:\Users\user\Desktop"

REM Διαχωρισμός των ονομάτων φακέλων
for %%A in (%folders%) do (
    cd "%desktop_path%\%%A"
    echo Επεξεργασία φακέλου: %%A
    for %%F in (*) do ren "%%F" "%%A.%%F"
    cd "%desktop_path%"
)
