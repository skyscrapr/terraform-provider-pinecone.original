terraform {
  required_providers {
    pinecone = {
      source = "pinecone-io/pinecone"
    }
  }
}

provider "pinecone" {
  environment = "us-west4-gcp"
  # api_key = set via PINECONE_API_KEY env variable
}

resource "pinecone_index" "test" {
  name = "tftestindex"
  spec = {
    serverless = {
      cloud  = "aws"
      region = "us-west-2"
    }
  }
}
