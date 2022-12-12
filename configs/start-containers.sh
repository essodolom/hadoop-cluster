#!/bin/bash

# start hadoop master container
  docker run -itd --net=hadoop -p 50070:50070 -p 8088:8088 -p 7077:7077 -p 16010:16010 \
            --name hadoop-master --hostname hadoop-master \
            my_hadoop

# start hadoop slave container
  docker run -itd -p 8040:8042 --net=hadoop \
        --name hadoop-slave1 --hostname hadoop-slave1 \
              my_hadoop

  docker run -itd -p 8041:8042 --net=hadoop \
        --name hadoop-slave2 --hostname hadoop-slave2 \
              my_hadoop

# get into hadoop master container
sudo docker exec -it hadoop-master bash
