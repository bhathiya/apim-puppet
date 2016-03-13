cd /opt/
mysql -h 192.168.57.92 -u root -proot < script.sql
ssh -t -i datatgresearch.pem ubuntu@192.168.57.93 'cd /opt/; sudo bash setup.sh; exit;'
ssh -t -i datatgresearch.pem ubuntu@192.168.57.94 'cd /opt/; sudo bash setup.sh; exit;'
ssh -t -i datatgresearch.pem ubuntu@192.168.57.96 'cd /opt/; sudo bash setup.sh; exit;'
ssh -t -i datatgresearch.pem ubuntu@192.168.57.97 'cd /opt/; sudo bash setup.sh; exit;'
