#####################################################################
##
##      Created 11/18/18 by admin. for aws-single-instance
##
#####################################################################

## REFERENCE {"CAMVPC":{"type": "aws_reference_network"}}

terraform {
  required_version = ">= 1.0.0"
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.1.1"
    }
  }
}

provider "null" {
}

resource "null_resource" "test_resource" {
  
  triggers = {
    msg = "${var.greeting_message}"
  }
  
  provisioner "local-exec" {
    command = "echo ${var.greeting_message}"
  }
}
