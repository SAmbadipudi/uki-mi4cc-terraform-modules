variable "secret-mangr-name" {
   description = "Name of the Secret Manager"
}

variable "values-stored" {
   description = "Values needs to be store under secrets manager"
   type = "map"
}
