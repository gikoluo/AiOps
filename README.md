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




