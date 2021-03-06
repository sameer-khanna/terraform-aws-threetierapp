# terraform-aws-threetierapp
Code that creates a VPC with all the networking and then deploys a 3 tier application onto the stack. 
* **The web tier** has multiple EC2 instances (across AZs) with NGINX servers installed on them that run a sample Angular app. The instances are front-ended by an external ALB. An alias DNS record is created in an existing DNS hosted zone that points at the public ALB.
* **The app tier** has multiple EC2 instances (across AZs) with a sample Spring boot (REST API) application installed on them. The instances are front-ended by an internal ALB. The NGINX servers also act as reverse proxies for the Spring boot application.
* **The database tier** has an RDS instance that is accesible only from the App tier.
* A private DNS hosted zone (accessible only from the VPC) is created and an alias DNS record is created in it that points at the private ALB. The web servers call the REST API on the private ALB and display the results on the front-end.
* RDS related parameters are created in the Systems Manager Parameter Store.
