rm -rf target
./mvnw verify -Pnative -DskipTests
docker build -f external/Dockerfile.native . -t quarkus-external-native
