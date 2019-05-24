cd ../cogentlabs-api-gateway/ && git co master && git pull && cd ../docker/
docker build -t cogentlabs/api-gateway ../cogentlabs-api-gateway/
cd ../cogentlabs-image-service/ && git co master && git pull && cd ../docker/
docker build -t cogentlabs/image-service ../cogentlabs-image-service/
cd ../cogentlabs-image-processor/ && git co master && git pull && cd ../docker/
docker build -t cogentlabs/image-processor ../cogentlabs-image-processor/
docker build -t cogentlabs/rabbitmq ./rabbitmq/
