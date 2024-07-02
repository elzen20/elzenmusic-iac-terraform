variable "us_central"{
    description = "Region US Central"
    type = string
}

variable "tags"{
  description = "Tags del proyecto AWS"
  type = map(string)
}

variable "ses_email"{
  description = "email used by SES"
  type = string
}

variable "api_key_id_firebase" {
  description = "Firebase API KEY ID"
  type = string
}

variable "zelman-project" {
  description = "Zelman project contains free bucket for all projects"
  type = string
  
}

variable "elzenmusic-project-firebase" {
  description = "Elzen project ID firebase"
  type = string  
}

variable "elzenmusic-project" {
  description = "Elzen project google"
  type = string  
}
variable "elzenmusic-dev-firebase" {
  description = "Elzen project google Dev environment firebase"
  type = string  
}
variable "elzenmusic-dev-google" {
  description = "Elzen project google Dev environment "
  type = string  
}

variable "create_dev_environment" {
  description = "Indicates whether to create the development environment"
  type        = bool
  default     = true  # Cambia a true si deseas crear el ambiente de desarrollo
}