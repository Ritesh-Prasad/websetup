#! /bin/bash/

#variable declare 

package="nginx wget unzip"
url='https://www.tooplate.com/zip-templates/2156_graphite_creative.zip'
art_name=2156_graphite_creative
svc=nginx
##################################################
echo"############################################"
echo"updating the OS"
echo
apt update
echo"###########################################"
echo

echo"############################################"
echo"Installing Package"
echo
sudo apt install  $package -y
echo"###########################################"
echo

echo"############################################"
echo"Downloading ZIP File"
wget $url
echo"###########################################"
echo

echo"############################################"
echo"UNZIP File"
sudo unzip $art_name.zip
echo"###########################################"
echo

echo"############################################"
echo"Copying UNZIP File"
cp -r $art_name/* /var/www/html/.
echo"###########################################"
echo

echo"############################################"
echo"Restarting Services"
sudo systemctl restart $svc
echo"###########################################"
echo

echo"############################################"
echo"Enable Services"
sudo systemctl enable $svc
echo"###########################################"
echo

echo
echo "deployment is done now your website is live "
echo
