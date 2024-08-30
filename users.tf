resource "aws_iam_user" "workshop_users" {
  for_each = toset([
    "edgar@citrus-it.nl",
    "julius@citrus-it.nl",
    "lars@citrus-it.nl",
    "steven@citrus-it.nl",
  ])
  name = each.key
  path = "/system/users/"

}


resource "aws_iam_user_policy_attachment" "workshop_policy_attachment" {
  for_each   = aws_iam_user.workshop_users
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = each.value.name
}






