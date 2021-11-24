

### DO NOT EDIT BEYOND HERE ###

$pair = "${WEBHOOK_USERNAME}:${WEBHOOK_PASSWORD}"
$bytes = [System.Text.Encoding]::ASCII.GetBytes($pair)
$base64 = [System.Convert]::ToBase64String($bytes)

$headers = @{
    "Content-Type" = "application/json";
}

$body = Get-Content -Raw -Path "./test-payload.json"

Write-Host "Testing Function ..."
Invoke-WebRequest -Uri http://localhost:8080 -Method POST -Headers $headers -Body $body

Write-host "See docker container console for output"