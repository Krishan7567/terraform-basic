variable sample {
    default = "hello"
}

output "sample" {
  value = var.sample
}

variable "ex-list" {
    default = [
        "Cloud",
        "Devops",
        100,
        false,
        "Verma"
    ]
}

output "ex-list" {
    value = "${var.ex-list[0]} ${var.ex-list[1]}"
}

variable "ex-list-output" {
    default = {
        duration = 105
        timing   = "0730AMIST"
        trainer  = "Mannu"
    }
  
}

output "ex-list-output" {
    value = "${var.ex-list-output["duration"]} ${var.ex-list-output["trainer"]}" 
  
}













variable "krishan" {
  default = {
    name = "krishan"
    designation = "CEO"
  }
}

output "krishan" {
    value = "name is ${var.krishan["name"]} designation is ${var.krishan["designation"]}"
}