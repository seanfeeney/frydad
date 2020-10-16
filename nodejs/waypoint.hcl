project = "frydad"

app "frydad" {
  labels = {
    "service" = "frydady",
    "env" = "dev"
  }

  build {
    use "pack" {}
    registry {
      use "aws-ecr" {
        region = "us-east-1"
        repository = "frydad"
        tag = "latest"
      }
    }
  }

  deploy {
    use "aws-ecs" {
      region = "us-east-1"
      memory = "512"
    }
  }
}
