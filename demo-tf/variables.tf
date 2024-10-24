variable "confluent_cloud_api_key" {
  description = "Confluent Cloud API Key (also referred as Cloud API ID)"
  type        = string
  default = "E3PWLHQUWXL7WE5R"
}

variable "confluent_cloud_api_secret" {
  description = "Confluent Cloud API Secret"
  type        = string
  sensitive   = true
  default = "Y8Rm3QeoI9/DVQPlWVTOe0M5Mtgv3aiXCLg5Hq6u1VnIwy0ZIzHYRN7w7AUwwkmt"
}


variable "my-key" {
    type = string
    default = "E3PWLHQUWXL7WE5R" 
}

variable "cloud_name" {
    type = string      
}

variable "my_region" {
    type = string    
}

variable "cluster_name" {
    type = string      
}