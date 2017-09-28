Param (
  [Parameter()]
  [String]$SourceSAKey
)
Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
Set-PSRepository -Name PSGallery -InstallationPolicy Trusted
Install-Module Azure -Confirm:$False
Import-Module Azure
$storageContext = New-AzureStorageContext -StorageAccountName ppdrazfiles -StorageAccountKey $SourceSAKey
$storageContext |  New-AzureStorageShare -Name websites
$storageContext |  New-AzureStorageShare -Name m2m
$storageContext |  New-AzureStorageShare -Name certificates