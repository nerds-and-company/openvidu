cp ../../target/openvidu-server-"$1".jar ./openvidu-server.jar

docker build -t nerdsandcompany/openvidu-server-kms:"$1" .

rm ./openvidu-server.jar
