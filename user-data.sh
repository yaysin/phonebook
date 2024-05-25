#! /bin/bash
dnf update -y
dnf install pip -y
pip3 install flask==2.3.3
pip3 install flask_mysql
dnf install git -y
TOKEN=${user-data-git-token}
USER=${user-data-git-name}
cd /home/ec2-user && git clone https://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@github.com/yaysin/phonebook.git
export MYSQL_DATABASE_HOST=${db-endpoint}
python3 /home/ec2-user/phonebook/phonebook-app.py