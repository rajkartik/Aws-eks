
resource "aws_iam_user" "administrator" {
  name = "eks-admin"
}
resource "aws_iam_group" "administrator_group" {
  name = "Admins"
  path = "/"
}

data "aws_iam_policy" "administrator_access" {
  name = "AdministratorAccess"
  
}

resource "aws_iam_group_policy_attachment" "administrators" {
  group      = aws_iam_group.administrator_group.name
  policy_arn = data.aws_iam_policy.administrator_access.arn

}

resource "aws_iam_user_group_membership" "eks_dev_admin" {
  user   = aws_iam_user.administrator.name
  groups = [aws_iam_group.administrator_group.name]
}