rm -rf target
mvn -Dquarkus.package.type=uber-jar -DskipTests verify
docker build -f external/Dockerfile.jvm . -t quarkus-external-jvm
