terraform {
  required_providers {
    confluent = {
      source  = "confluentinc/confluent"
      version = "2.7.0"
    }
  }
}


provider "confluent" {
  cloud_api_key    = var.confluent_cloud_api_key
  cloud_api_secret = var.confluent_cloud_api_secret
}


resource "confluent_environment" "staging" {
  display_name = "Staging"

  stream_governance {
    package = "ESSENTIALS"
  }
}

resource "confluent_environment" "test-env" {
  display_name = "Development"
}

resource "confluent_kafka_cluster" "basic-cluster" {
  display_name = var.cluster_name
  availability = "SINGLE_ZONE"
  cloud        = var.cloud_name
  region       = var.my_region
  basic {}

  environment {
    id = confluent_environment.test-env.id
  }
}