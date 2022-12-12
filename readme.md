       Run Hadoop Cluster within Docker Containers
       
    1.clone github repository
        git clone https://github.com/henriams/hadoop-cluster
        
    2.build image
        cd hadoop-cluster
        sudo ./build-image.sh
        
    3-create hadoop network
        sudo docker network create --driver=bridge hadoop
        
    4-start containers
        sudo ./start-container.sh
       
    -start 3 containers with 1 master and 2 slaves
    -you will get into the /root directory of hadoop-master container
       
    5.start hadoop
          ./start-hadoop.sh
       
       
       Getting started with Hadoop
       
     1-Create a directory in HDFS, called input. To do this, type
           hadoop fs –mkdir -p input

    We will use the purchases.txt file as input for MapReduce processing. This file is already under the main directory of your master machine.
     
     2-Load the purchases file into the input directory you created:

         hadoop fs –put purchases.txt input     
     3-in the master container shell, and run the map reduce job with this command:
           hadoop jar wordcount-1.jar os.ensao.tp1.WordCount input output  
     4-To display the last lines of the generated file output/part-r-00000, with
         hadoop fs -tail output/part-r-00000
         
        
 It is also possible to see the behavior of the slave nodes, by going to the address:
           http://localhost:8041 for slave1, and http://localhost:8042 for slave2         
