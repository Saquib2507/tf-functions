terraform {}

locals {
  value = "Hello World"
}

variable "string_list" {
  type = list(string)
  default = [ "Server1", "Sever2", "Server3" ]
}

output "output" {
  //value = lower(local.value)
  #value = startswith(local.value, "hello")
  #value = split(" ", local.value)
  #value = max(1,2,3,4,5)

  #value = length(var.string_list)
  value = join(" : ", var.string_list)
}