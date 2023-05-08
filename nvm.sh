#!/bin/bash
# Ec2에 nvm 설치 후 node lts 설치
# sudo 문제 해결을 위한 npm 설치
# 실행완료 후 git clone 이후 작업 실행할 것

sudo apt-get update
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
nvm install --lts
# sleep 5
sudo apt-get install npm -y


# git clone https://github.com/cs-devops-bootcamp/sprint-aws.git
# 유저네임 = 깃허브 유저네임
# 암호 = 깃허브 깃허브 프로필의 셋팅 -> developer setting
#       -> personal access -> 레포 읽기 토큰 발행 후 암호에 입력
# cd sprint-aws
# cd server
# npm install
# sudo node app.js
