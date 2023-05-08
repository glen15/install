# elasticsearch 설치 후 할 것
# 설치할 때 이미 elastic.co의 저장소를 설정했기 때문에 문제없는 것
sudo apt install openjdk-8-jre-headless
sudo apt-get update
sudo apt-get install logstash
# logstash 구성파일 설정
sudo nano /etc/logstash/conf.d/logstash.conf
# 예시
input {
    file {
        path => "/home/ubuntu/access_log"
        start_position => "beginning"
    }
}
filter {
    grok {
        match => {"message" => "%{COMBINEDAPACHELOG}"}
    }
    data {
        match => ["timestamp", "dd/MMM/yyyy:HH:mm:ss Z"]
    }
}
output {
    elasticsearch{
        hosts => ["localhost:9200"]
    }
    stdout {
        codec => rubydebug
    }
}

# 구성파일을 사용하여 logstash 실행
cd /usr/share/logstash/
sudo bin/logstash -f /etc/logstash/conf.d/logstash.conf
