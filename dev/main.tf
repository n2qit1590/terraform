module "ft-web" {
  source = "../modules/"
  instance_name = "tf-web-server-test"
  startup_script = "sudo apt-get update && sudo apt-get install apache2 -y && echo '<!doctype html><html><body><h1>Test terraform!</h1></body></html>' | sudo tee /var/www/html/index.html"
  firewall_name = "tf-web-server-fw"
}