docker build -f multistage/Dockerfile.native . -t quarkus-multistage-native
docker run quarkus-multistage-native
