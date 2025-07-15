resource "aws_key_pair" "tee-import-keyp" {
  key_name   = "tee-import-keyp"
  public_key = file("./tee-import-keyp.pub")
}
