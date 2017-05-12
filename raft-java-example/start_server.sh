#!/usr/bin/env bash

mvn clean package
mvn dependency:copy-dependencies
java -Dcom.wenweihu86.raft.data.dir=/Users/baidu/raft-java-example/data -cp target/classes:target/dependency/* com.wenweihu86.raft.example.ServerMain 1 127.0.0.1:8050:1;127.0.0.1:8051:2;127.0.0.1:8052:3