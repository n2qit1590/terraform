module "ft-web" {
  source = "../modules/"
  instance_name = "tf-web-server-test"
  startup_script = "sudo apt-get update && sudo apt-get install apache2 git-all -y && sudo mkdir /var/www/html && cd /var/www/html && sudo git clone https://github.com/n2qit1590/capiclean.git&& sudo cp -rf capiclean/* . "
  firewall_name = "tf-web-server-fw"
}