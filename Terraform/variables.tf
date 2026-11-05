# main-vars.tf
############################################
# Compartments
############################################

variable "compartment_id" {
  description = "The OCID of the parent compartment where the resources will be created."
  type        = string
  default     = "ocid1.tenancy.oc1..aaaaaaaaqv5so5lzw6up6vgv4x4rrv3bx3yo55u4o77fv5ccoie3g2j6dsjq"
}

variable "compartment_name" {
  description = "Compartment Name"
  type        = string
  default     = "cloudquicklabs-compartment"
}

variable "compartment_description" {
  description = "Compartment Description"
  type        = string
  default     = "test-compartment description"
}

############################################
# VCN
############################################

variable "vcn1" {
  description = "The details of VCN1."
  default = {
    cidr_blocks : ["10.0.0.0/24"]
    display_name : "vcn01"
  }
}

############################################
# Public Subnet, Route Table, and Internet Gateway
############################################

variable "subnetA_pub" {
  description = "The details of the subnet"
  default = {
    cidr_block : "10.0.0.0/24"
    display_name : "IC_pub_snet-A"
    is_public : true
    route_table : {
      display_name = "routeTable-Apub"
      description  = "routeTable-Apub"
    }
  }
}

variable "internet_gateway_A" {
  description = "The details of the internet gateway"
  default = {
    display_name : "IC_IG-A"
    ig_destination = "0.0.0.0/0"
  }
}

############################################
# Compute Instance
############################################

variable "ic_pub_vm_A" {
  description = "The details of the compute instance"
  default = {
    display_name : "IC_pub_vm-A"
    assign_public_ip : true
    availability_domain : "AD-1"
    image_ocid : "ocid1.image.oc1.sa-santiago-1.aaaaaaaadzssukd5owr3hsj6ailjd4cpvuneshbvunnzbgf5b42fa3t6fetq"
    shape : {
      name          = "VM.Standard.E3.Flex"
      ocpus         = 1
      memory_in_gbs = 2
    }
    ssh_authorized_keys = ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC98o84ALTtuvVTiu+h8eyrPaZ2n1KkqL3QWXBQ/ubYYMNCA2bT8aiOW+9Zx4aXeDXLIYdHgM0IV7wJWitwKuLZaYMxGBV/cquSBQ0a4cIdI+G/nQHEifU7+OpKZezReaYVhHGqkMY3c5agJyfqeGMKH21XOH4lTPMbI29fG1SFqc9BT2Pu60wDy6m8mGYQ3eKBDgasx6bh+wXy0BN4OVI0u7CVG3gPWMTalhqNpBiwi4oTKJsOVEcCT3EErfFrfKHdYVxudmS3Nc8nEcrvrm2+yy+XGj3euWJahXffHDMOOoD2ymi1Cw+91ymTVLNyJoiHxQyIOhFfjB2scBUmdIXb ssh-key-2026-11-05"]
  }
}