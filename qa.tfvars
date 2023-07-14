vpc_cidr = "10.21.0.0/16"
ingress_rules = {
    "1" = {
      port  = 22
      cidrs = ["49.37.16.20/32"]
    },
    "2" = {
      port  = 443
      cidrs = ["0.0.0.0/0"]
    },
    "3" = {
      port  = 80
      cidrs = ["0.0.0.0/0"]
    }
}