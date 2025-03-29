docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID garvitnandawat/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID garvitnandawat/$JOB_NAME:latest

docker push garvitnandawat/$JOB_NAME:$BUILD_ID

docker push garvitnandawat/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID garvitnandawat/$JOB_NAME:$BUILD_ID garvitnandawat/$JOB_NAME:latest
