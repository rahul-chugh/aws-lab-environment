$arnForPasswordSecret = [System.Environment]::GetEnvironmentVariable('UNICORN_LAB_RESERVED_1')
$password = ((Get-SECSecretValue -SecretId $arnForPasswordSecret).SecretString | ConvertFrom-Json).Password
net.exe user Administrator $password
