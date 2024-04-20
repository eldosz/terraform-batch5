provider aws {
region = "us-east-2"

}



resource "aws_key_pair" "deployer1" {
    key_name= "kaizen1"
    public_key = file("~/.ssh/id_rsa.pub")
    tags = {
      Team = "Devops"
      Env = "Dev"
    }
}