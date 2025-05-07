variable "region" {
  description = "La région AWS"
  type        = string
  default     = "eu-west-3"  # Exemple : Paris
}

variable "ami_id" {
  description = "L'AMI à utiliser"
  type        = string
}

variable "key_name" {
  description = "Le nom de la clé SSH"
  type        = string
}
