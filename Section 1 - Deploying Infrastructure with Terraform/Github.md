# Pre-Requisite
## Make sure you create your GitHub account.
Create Personal Access Token
GitHub Provider Terraform:
## https://registry.terraform.io/providers/integrations/github/latest/docs

#Code Used:
```
terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "github" {
  token = "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"
}

resource "github_repository" "example" {
  name        = "terraform-repo"

  visibility  = "private"

}
```

# Initialize and Apply:
```
terraform init
terraform plan
terraform apply
```
