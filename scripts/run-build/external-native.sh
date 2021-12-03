rm -rf target
export GRAALVM_HOME=/usr/lib/jvm/graalvm-ce-java11-21.3.0
./mvnw verify -Pnative -DskipTests
docker build -f external/Dockerfile.native . -t quarkus-external-native
docker run quarkus-external-native
