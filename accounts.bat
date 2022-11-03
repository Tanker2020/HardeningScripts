@echo off

::All to do with users and accounts
set /p q= "Do you want to add/delete/change? (a/d/c)"
if %q%==a (
    set /p x= "Number of accounts needed to be added: "
    for /L %%y in (0,1,%x%) do (
    set /p z= "Enter a username: "
    set /p r= "Enter a password: "
    net user %z% %r% /add
    )
)else if %q%==d (
    set /p x= "Number of accounts needed to be deleted: "
    for /L %%y in (0,1,%x%) do (
    set /p z= "Enter a username: "
    net user %z% /delete
    ) 
)else if %q%==c (
    set /p x= "Add Admin or remove or change password? (a/r/c)"
    set /p l= "Number of accounts changing? "
    if %x%==a (
        for /L %%y in (0,1,%l%) do (
            set /p z= "Enter a username: "
            net localgroup administrators %z% /add
        )
    )else if %x%==r (
        for /L %%y in (0,1,%l%) do (
            set /p z= "Enter a username: "
            net localgroup administrators %z% /delete
        )
    )else if %x%==c (
        for /L %%y in (0,1,%l%) do (
            set /p z= "Enter a username: "
            set /p r= "Enter a password: "
            net user %z% %r%
        )
    )
)

echo Finished
pause