@echo off

set /p logoff= "Minutes a user has before being forced to log off when the account expires or valid logon hours expire: "
set /p minpw= "Minimum password length: "
set /p maxage= "Maximum password age: "
set /p minage= "Minimum password age: "
set /p history= "Number of passwords remembered: "
user accounts /forcelogoff:%logoff% /minpwlen:%minpw% /maxpwage:%maxage% /minpwage:%minage% /uniquepw:%history%
echo Finished
pause 