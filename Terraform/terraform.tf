terraform{
    required_providers{
        oci={
            source="oracle/oci"
            version=">= 5.0.0"
        }
    }
}
terraform {
  backend "http" {
    address = "https://objectstorage.sa-santiago-1.oraclecloud.com/p/qordHXknPfm2HVRTOJdDvqrKZAo9iRFPXs8JlZvh-vNeTw0R_PNwv6MUQeEOojPS/n/axz4nhvfznok/b/bucket-20261102-2322/o/terraform.tfstate"
    update_method = "PUT"
  }
}
