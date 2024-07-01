resource "aws_ses_email_identity" "email" {
  email = var.ses_email
}

resource "aws_iam_role" "ses_role" {
  name = "SESRole"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ses.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_role_policy" "ses_policy" {
  name = "SESPolicy"
  role = aws_iam_role.ses_role.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "ses:SendEmail",
          "ses:SendRawEmail"
        ]
        Resource = "*"
      }
    ]
  })
}