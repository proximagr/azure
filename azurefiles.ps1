param 
(

	[Parameter(Mandatory=$true)]
	[string]$SourceSAKey

)
$storageContext = New-AzureStorageContext -StorageAccountName ppdrazfiles -StorageAccountKey $SourceSAKey
$storageContext |  New-AzureStorageShare -Name websites
$storageContext |  New-AzureStorageShare -Name m2m
$storageContext |  New-AzureStorageShare -Name certificates