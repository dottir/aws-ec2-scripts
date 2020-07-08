# credit: Stephane Mareek (Udemy)
# this script install apache on linux instance and test html page

sudo su
yum update -y
yum install -y httpd.x86_64

systemctl start httpd.service
systemctl enable httpd.service
curl localhost:80

# make sure security group has http port 80 open
echo "hello world from $(hostname -f)" > /var/www/html/index.html
