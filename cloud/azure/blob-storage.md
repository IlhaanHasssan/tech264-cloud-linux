# ***BLOB STORAGE***

- [***BLOB STORAGE***](#blob-storage)
  - [***Creating a Blob Storage VM***](#creating-a-blob-storage-vm)

## ***Creating a Blob Storage VM***
1. Create a VM using our app image named ***`tech264-ilhaan-blob-storage`*** and the instructions here[Create a VM](/tech264-cloud-linux/cloud/create_virtual_machine.md), then add the [run app script](/tech264-cloud-linux/scripting/run-app-only.sh) to user data when creating your VM (dont need the DB_HOST env variable as we are not running/creating a database VM)
2. SSH into the VM using these instructions [SSHing into a VM](/tech264-cloud-linux/cloud/create_SSH_key.md)
3. Download and run the Azure CLI to create a blob storage account and test container here [Azure CLI](/tech264-cloud-linux/cloud/azure/README.md)