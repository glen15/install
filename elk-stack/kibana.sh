sudo apt-get install kibana
sudo vi /etc/kibana/kibana.yml
    # chage server.host to 0.0.0.0

sudo /bin/systemctl daemon-reload
sudo /bin/systemctl enable kibana.service
sudo /bin/systemctl start kibana.service

kibana is now available on port 5601
