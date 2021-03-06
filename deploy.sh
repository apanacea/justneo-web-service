#!/bin/bash
cd /home/work/justneo || ehco "dir not exist" exit 1
#这里写端口号
port=8000
#根据端口号查询对应的pid
pid=$(netstat -nlp | grep :$port | awk '{print $7}' | awk -F"/" '{ print $1 }');

#杀掉对应的进程，如果pid不存在，则不执行
if [  -n  "$pid"  ];  then
    kill -9 "$pid";
fi
#这里执行业务逻辑
nohup java -jar /home/work/justneo/justneo-0.0.1-SNAPSHOT.jar > nohup.log 2>&1 &
echo "server is running"