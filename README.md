# AiOps

## 日志采集工具

比较高效的工具是ELK套件。信息采集流程为：
Filebeat信息采集 -> （+ Kafla）Logstash信息解析 -> ElasticSearch信息存储 -> Kibana信息展示

## 数据存储

原始数据：HDFS
离线模型数据： HDFS
处理后的数据： 实时分析数据库。如Druid，适用于OLAP分析。 ES是更为简便的工具
核心数据： MySQL, Oracle
热数据： Redis等

## 报警系统

Zabbix

## CI/CD系统

统一代码管理： Git + Gitlab
统一权限管理： openLDAP
集成系统： Jenkins & Pipeline
BUG管理： 





https://www.ibm.com/support/knowledgecenter/en/SSWHYP_4.0.0/com.ibm.apimgmt.cmc.doc/task_apionprem_gernerate_self_signed_openSSL.html


openssl req -newkey rsa:2048 -nodes -keyout key.pem -x509 -days 365 -out certificate.pem

openssl x509 -text -noout -in certificate.pem

 openssl pkcs12 -inkey key.pem -in certificate.pem -export -out certificate.p12
 

## Debug K8S

kubectl run curl --image=radial/busyboxplus:curl -i --tty


## Config Aliyun registry
https://cr.console.aliyun.com/repository/cn-shanghai/giko/jenkins/detail

### follow https://www.alibabacloud.com/help/zh/doc-detail/53771.htm

kubectl create secret docker-registry aliyun-docker-registry-secret --docker-server=registry.cn-shanghai.aliyuncs.com --docker-username=gikoluo@aliyun.com --docker-password=80474168aA --docker-email=gikoluo@aliyun.com
secret "aliyun-docker-registry-secret" created

docker login registry.cn-shanghai.aliyuncs.com

kubectl patch serviceaccount default -p '{"imagePullSecrets":[{"name":"aliyun-docker-registry-secret"}]}'


