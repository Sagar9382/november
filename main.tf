terraform{
    required_provider{
        azurerm ={
            source = "hashicorp/azurerm"
            version = "4.70.0"
        }
    }

    backend "azurerm" {
        resource_group_name = "state-rg"
        storage_account_name = "my-state"
        container_name = "my-containere"
        
    }
}


provider "azurem" {
    features{}
}


resource "azurerm_resource_group" "block" {
    name = "rg"
    location = "westus"
}

