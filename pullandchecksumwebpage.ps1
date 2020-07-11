    # Powershell

    clear

    $url = "www.yahoo.com"

	$response = (Invoke-WebRequest -Uri "http://$($url)" -UseBasicParsing).content

    $response | Out-File -FilePath .\urltochecksum.txt -force

    Get-FileHash .\urltochecksum.txt -Algorithm MD5 | Format-List | Out-File -filepath .\urlwithchecksum.txt

    

