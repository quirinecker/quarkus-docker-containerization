docker build -f singlestage/Dockerfile.jvm . -t quarkus-singlestage-jvm
docker run quarkus-singlestage-jvm
