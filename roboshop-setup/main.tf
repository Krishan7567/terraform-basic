module "frontend" {
    source      = "./ec2"
    COMPONENT   = "frontend"
  
}

module "Mongodb" {
    source      = "./ec2"
    COMPONENT   = "Mongodb"
    APP_VERSION = "0.0.2"
  
}

module "Mongodb" {
    source      = "./ec2"
    COMPONENT   = "Mongodb"
    APP_VERSION = "0.0.2"
  
}