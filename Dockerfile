FROM python:alpine3.19

WORKDIR /work

CMD python3 --version
# RUN pip install redis
# RUN 

# CMD 



pwd
cd .
rm -f Dockerfile
echo "FROM python:alpine3.19 \nWORKDIR /work \nCMD python3 --version" >> Dockerfile
docker ps
docker ps -a
docker images

docker build -t test-image .
docker images
docker rmi 5f9b4b6e8b07      
docker run -d --name test-cont test-image
docker logs test-cont
docker ps
docker ps -a
docker container stop test-cont
docker container stop test-cont
docker rm test-cont
docker ps 
docker ps -a
docker images