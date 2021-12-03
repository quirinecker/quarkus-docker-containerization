docker build -f multistage/Dockerfile.jvm . -t quarkus-multistage-jvm
docker run quarkus-multistage-jvm
