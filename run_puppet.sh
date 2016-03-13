cd /etc/puppet/environments/production/modules/wso2am/files/
cp /home/jenkins/m2repo/org/wso2/am/wso2am/2.0.0-SNAPSHOT/wso2am-2.0.0-SNAPSHOT.zip .
cd /opt/
mysql -h 192.168.57.92 -u root -proot < script.sql
ssh -t -i datatgresearch.pem ubuntu@192.168.57.93 'cd /opt/; sudo bash setup.sh; exit;'
ssh -t -i datatgresearch.pem ubuntu@192.168.57.94 'cd /opt/; sudo bash setup.sh; exit;'
ssh -t -i datatgresearch.pem ubuntu@192.168.57.96 'cd /opt/; sudo bash setup.sh; exit;'
ssh -t -i datatgresearch.pem ubuntu@192.168.57.97 'cd /opt/; sudo bash setup.sh; exit;'
#curl http://192.168.57.92:8080/job/product-apim-tests/build?token=product-apim-tests
