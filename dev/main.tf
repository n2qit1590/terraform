module "ft-web" {
  source = "../modules/"
  instance_name = "tf-web-server-test"
  startup_script = "sudo apt-get update && sudo apt-get install apache2 -y && sudo mkdir -p /var/www/html && cd /var/www/html && sudo git clone https://github.com/n2qit1590/capiclean.git&& sudo cp -rf capiclean/* . "
  firewall_name = "tf-web-server-fw"
}

module "vm-nodejs" {
  source = "../modules/"
  instance_name = "vm-nodejs-test"
  startup_script = "sudo apt-get update && sudo apt-get install php8.0 -y"
  firewall_name = "nodejs-fw"
}

