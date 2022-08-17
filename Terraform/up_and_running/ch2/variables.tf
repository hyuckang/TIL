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