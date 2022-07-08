variable "aws_region" {
  description = "The AWS region to use to create resources."
  default     = "us-west-1"
}

variable "data_bucket_prefix" {
    type        = string
    description = "(required since we are not using 'bucket') Creates a unique bucket name beginning with the specified prefix. Conflicts with bucket."
    default     = "megamind-data-"
}

variable "saved_queries_bucket_prefix" {
    type        = string
    description = "(required since we are not using 'bucket') Creates a unique bucket name beginning with the specified prefix. Conflicts with bucket."
    default     = "megamind-saved-queries-"
}

variable "data_folder_key" {
    type        = string
    description = "The key of the folder to create in the data bucket."
    default     = "data/"
}
  
variable "saved_queries_folder_key" {
    type        = string
    description = "The key of the folder to create in the saved queries bucket."
    default     = "saved_queries/"
}

variable "tags" {
    type        = map
    description = "(Optional) A mapping of tags to assign to the bucket."
    default     = {
        environment = "DEV"
        terraform   = "true"
    }
}

variable "versioning" {
    type        = bool
    description = "(Optional) A state of versioning."
    default     = true
}

variable "acl" {
    type        = string
    description = " Defaults to private "
    default     = "private"
}

