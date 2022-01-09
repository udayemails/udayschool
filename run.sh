sudo docker build -t kidzeebalagere-static:version-1.1 -f Dockerfile .

sudo docker ps -f name=docker-kidzeebalagere-static -q | xargs --no-run-if-empty docker container stop

sudo docker container ls -a -fname=docker-kidzeebalagere-static -q | xargs -r docker container rm

sudo docker run --expose=2025 -p 2025:80 -d --name docker-kidzeebalagere-static kidzeebalagere-static:version-1.1
