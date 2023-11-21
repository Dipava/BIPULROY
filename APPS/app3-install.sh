#! /bin/bash
sudo apt-get update -y
sudo apt-get install -y httpd
sudo systemctl enable httpd
sudo systemctl start httpd   
sudo echo '<h1>Welcome to RCL - APP-3</h1>' | sudo tee /var/www/html/index.html
sudo mkdir /var/www/html/app2
sudo echo '<!DOCTYPE html> <html> <body style="background-color:rgb(15, 232, 192);"> <h1>Welcome to Stack Simplify - APP-2</h1> <p>Terraform Demo</p> <p>Application Version: V1</p> </body></html>' | sudo tee /var/www/html/app2/index.html
sudo curl http://169.254.169.254/latest/dynamic/instance-identity/document -o /var/www/html/app2/metadata.html


