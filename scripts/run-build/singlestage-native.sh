docker build -f singlestage/Dockerfile.native . -t quarkus-singlestage-native
docker run quarkus-singlestage-native
