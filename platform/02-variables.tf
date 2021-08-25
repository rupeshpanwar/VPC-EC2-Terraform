variable "region" {
  default     = "us-east-2"
  description = "AWS Region"
}

variable "remote_state_bucket" {
  description = "Remote bucket for state file"
}

variable "remote_state_key" {
  default     = "layer1/infrastructure.tfstate"
  description = "Remote state file to read"
}