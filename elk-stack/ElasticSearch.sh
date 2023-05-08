#!/bin/bash

wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -

sudo apt-get install apt-transport-https

echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list

sudo apt-get update && sudo apt-get install elasticsearch

### 설정 적용 ###

# sudo vi /etc/elasticsearch/elasticsearch.yml
# 방향키를 사용해 'node.name'이라고 적혀있는 곳으로 이동합니다
# 커서를 'n'에 놓고 'i' 키를 눌러 vi 에디터의 입력 모드로 전환합니다
# #을 지워 노드의 이름을 'node-1'으로 설정합니다
# 아래로 계속 스크롤 해 'network.host'으로 이동합니다
# 마찬가지로 #을 지우고 0.0.0.0으로 변경합니다
# 다음으로는 'discovery.seed_hosts'로 이동해서
# #을 지우고 "127.0.0.1"로 대체합니다
# 마지막으로 'cluster.initial_master_nodes'로 이동해 "node-1"만 남겨 놓습니다
# {:wq}을 입력해 저장하고 나옵니다 이제 elasticsearch를 실행할 준비가 다 됐습니다

### 머신을 작동할 때마다 elasticsearch가 자동으로 실행 ###
# sudo /bin/systemctl daemon-reload
# sudo /bin/systemctl enable elasticsearch.service
# sudo /bin/systemctl start elasticsearch.service

### 실행확인 ###
# curl -XGET 127.0.0.1:9200
# "You Know, for Search"라는 문구가 나옵니다

