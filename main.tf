@ -0,0 +1,54 @@
resource "aws_iam_user" "lb"{
  name = "kaizen"
}

resource "aws_iam_user" "lb2"{
  name = "kaizen2"


} 

resource "aws_iam_user" "lb3"{
  name = "kaizen3"
}

resource "aws_iam_user" "lb4"{
  name = "kaizen4"
}

resource "aws_iam_user" "lb5"{
  name = "kaizen5"
}

resource "aws_iam_group" "hello"{
  name = "devops"
 



}
resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.lb.name,
    aws_iam_user.lb2.name,
    aws_iam_user.lb3.name,
    aws_iam_user.lb4.name,
    aws_iam_user.lb5.name,
  ]

  group = aws_iam_group.hello.name
}







resource "aws_iam_user" "lb9"{
  name = "hello" 


}
