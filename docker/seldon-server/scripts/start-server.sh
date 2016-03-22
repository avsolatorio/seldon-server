XMX_MEMORY=2530M
XMS_MEMORY=${XMX_MEMORY}

export JAVA_OPTS="-server -Duser.language=en -Duser.region=GB -Djava.awt.headless=true  -Xmx${XMX_MEMORY} -XX:+HeapDumpOnOutOfMemoryError -verbosegc -XX:+PrintGCDetails -XX:+PrintTenuringDistribution -XX:+PrintGCTimeStamps -XX:+PrintGCDateStamps -Xloggc:/home/ubuntu/labs/api/logs/gc-server.log -XX:+UseGCLogFileRotation -XX:NumberOfGCLogFiles=10 -XX:GCLogFileSize=100M -Dsun.net.inetaddr.ttl=60 -XX:+DisableExplicitGC -XX:+UseG1GC -Xms${XMS_MEMORY} -XX:MaxGCPauseMillis=200 "

catalina.sh start
