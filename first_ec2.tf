##https://github.com/zealvora/terraform-beginner-to-advanced-resource/blob/master/Section%201%20-%20Deploying%20Infrastructure%20with%20Terraform/first-ec2.md


###Intancia Linux
resource "aws_instance" "myec2-0736" {
  ami           = "ami-012967cc5a8c9f891"
  instance_type = "t2.micro"
  tags = {
    Name = "myec2-${formatdate("hhmm", timestamp())}"
    created = formatdate("YYYYMMDD-HHmmss", timestamp())
    Create_date_time = formatdate("YYYY-MM-DD hh:mm:ss ZZZ", timestamp())
    created2 = formatdate("YYYYMMDDhhmmss", timestamp())
    created-date = timestamp()
    env = "prd"
  }
    #lifecycle { ignore_changes = [tags["Create_date_time"], tags["Name"]]}
    #lifecycle { ignore_changes = [tags["Create_date_time"]]}
}

###Intancia Windows
/* resource "aws_instance" "myec2-windows1329" {
  ami           = "ami-015f002db921fbf07"
  instance_type = "t2.micro"
  tags = {
    Name = "myec2-windows1329"
    date = formatdate("YYYYMMDD", timestamp())
  }
} */