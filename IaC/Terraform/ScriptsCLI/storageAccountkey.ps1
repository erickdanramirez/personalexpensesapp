$RESOURCE_GROUP_NAME='personalexpenses-tfstate-rg'
$STORAGE_ACCOUNT_NAME="persexptfstatesa"

$ACCOUNT_KEY=$(az storage account keys list --resource-group $RESOURCE_GROUP_NAME --account-name $STORAGE_ACCOUNT_NAME --query '[0].value' -o tsv)
$env:ARM_ACCESS_KEY=$ACCOUNT_KEY