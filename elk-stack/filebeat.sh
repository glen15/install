sudo apt-get update && sudo apt-get install filebeat

sudo /bin/systemctl stop elasticsearch.service
sudo /bin/systemctl start elasticsearch.service

#Make /home/ubuntu/logs
#cd into it
wget http://media.sundog-soft.com/es/access_log

cd /etc/filebeat/modules.d
sudo mv apache.yml.disabled apache.yml
Edit apache.yml, add paths:
["/home/ubuntu/logs/access*"]
["/home/ubuntu/logs/error*"]

sudo /bin/systemctl start filebeat.service