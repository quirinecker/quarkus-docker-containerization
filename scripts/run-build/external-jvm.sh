rm -rf target
./mvnw -Dquarkus.package.type=uber-jar -DskipTests verify
docker build -f external/Dockerfile.jvm . -t quarkus-external-jvm
docker run quarkus-external-jvm
