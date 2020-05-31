output "config" {
  value = local.jfm_config
}


locals {
  jfm_config = {
    constants = {
      blockstroragetypes = local.blockstroragetypes["aws"]
    }
  }

  // predefined types for block storages
  blockstroragetypes = {
    "aws" : {
      "Standard" = "sc1"
      "Premium" = "st1"
      "StandardSSD" = "gp2"
      "UltraSSD" = "io1"
    }
    "azurerm" : {
      "Standard" = "Standard_LRS"
      "Premium" = "Premium_LRS"
      "StandardSSD" = "StandardSSD_LRS"
      "UltraSSD" = "UltraSSD_LRS"
    }
    "google" : {
      "Standard" = "pd-standard"
      "Premium" = "pd-standard"
      "StandardSSD" = "pd-ssd"
      "UltraSSD" = "pd-ssd"
    }
  }
}
