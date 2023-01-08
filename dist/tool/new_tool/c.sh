#  e.g. $1 service.proto 
if [ $# != 1 ]; then 
echo "USAGE: $0 protofilename (no .proto suffix)" 
exit 1
fi 


str=$1
echo "start compile [$str].."
array=(${str//./ })

if [ ${#array[@]} != 2 ];then
  echo "USAGE: [$str] file is illegal" 
  exit 1
fi 

if [ ${array[1]} != "proto" ];then
  echo "USAGE: [$str] is not a proto file" 
  exit 1
fi  

# if [ `echo $1 | grep -F .` ] ; then 
# echo "USAGE: $0 protofilename (no .proto suffix)" 
# exit 1
# fi 

OS=`uname -s|cut -c 1-3`
if [ $OS = "CYG" ];  then 
    CP="./dependent_jars/protobuf-java-3.5.1.jar;./dependent_jars/krpc-0.1.0.jar;*;."
else
    CP="./dependent_jars/protobuf-java-3.5.1.jar:./dependent_jars/krpc-0.1.0.jar:*:."
fi

if [ ! -d "./libs/" ];then 
  mkdir ./libs/
fi  


rm -fr target/

mkdir -p target/src  
protoc ${array[0]}.proto --java_out=target/src --descriptor_set_out=./libs/${array[0]}.proto.pb
if [ $? != 0 ] ; then 
exit 1
fi 

touch  ./libs/${array[0]}.proto.pb -r ${array[0]}.proto
jar cf ./libs/${array[0]}_sources.jar -C target/src/ .
touch  ./libs/${array[0]}_sources.jar -r ${array[0]}.proto

javapackagepath=`grep java_package ${array[0]}.proto|awk -F\" '{print $2}'|sed 's/\./\//g'`

mkdir target/classes  
javac -encoding utf-8 -cp $CP -d target/classes/ target/src/$javapackagepath/*.java
jar cf ./libs/${array[0]}_protos.jar -C target/classes/ .
touch  ./libs/${array[0]}_protos.jar -r ${array[0]}.proto


