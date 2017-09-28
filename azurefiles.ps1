$ContosoStoreKey = (Get-AzureStorageKey -StorageAccountName ppdrazfiles).Primary
$storageContext=New-AzureStorageContext -StorageAccountName ppdrazfiles -StorageAccountKey $ContosoStoreKey
$storageContext |  New-AzureStorageShare -Name websites
$storageContext |  New-AzureStorageShare -Name m2m
$storageContext |  New-AzureStorageShare -Name certificates