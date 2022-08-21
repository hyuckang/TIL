variable "number_example" {
  description = "number example"
  type        = number
  default     = 10
}

variable "list_example" {
  description = "list example"
  type        = list(any)
  default     = ["1", "2", "three"]
}

variable "list_numeric_example" {
  description = "number list example"
  type        = list(number)
  default     = [1, 2, 99]
}

variable "map_example" {
  description = "map example"
  type        = map(string)

  default = {
    key1 = "value1"
    key2 = "value2"
    key3 = "value3"
  }
}

variable "object_example" {
  description = "An example of a structural type in terraform"
  type = object({
    name    = string
    age     = number
    tags    = list(string)
    enabled = bool
  })

  default = {
    name    = "value1"
    age     = 42
    tags    = ["a", "b", "c"]
    enabled = false
    # enabled = valid => 에러 발생
  }
}