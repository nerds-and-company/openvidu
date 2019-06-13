cp ../../target/openvidu-server-"$1".jar ./openvidu-server.jar

docker build -t nerdsandcompany/openvidu-server-kms .

rm ./openvidu-server.jar
