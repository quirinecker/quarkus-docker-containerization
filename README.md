# Quarkus Image Performance

## Performance Table

| Image              | Compatibility | Convenience | Building Time | Execution Time | Size   |
|--------------------|---------------|-------------|---------------|----------------|--------|
| external-jvm       | 3             | 3           | 10.249s       | 1.784s         | 241MB  |
| singlestage-jvm    | 3             | 2           | 14.050s       | 1.565s         | 623MB  |
| multistage-jvm     | 3             | 2           | 14.012s       | 1.308s         | 241MB  |
| external-native    | 1             | 3           | 1m 30.995s    | 1.081s         | 119MB  |
| singlestage-native | 3             | 2           | 1m 36.998s    | 1.123s         | 2.32GB |
| multistage-native  | 3             | 2           | 1m 36.004s    | 1.110s         | 120MB  |

### Compatibility

Number of operating systems it is executable and buildable on. This measurement includes only:

- Linux
- MacOS
- Windows

For every operating system of this list the image gets one point.

### Convenience

Number of commands necessary to run the container.

### Execution Time

The time it takes to start up the container.

## Scripts

### build

```shell
./scripts/{method}-{type}.sh
```

NOTE: GRAAL VM is required when running `external-native`

### run

```shell
./scripts/{method}-{type}.sh
```

### Parameter

#### Method

- external: Quarkus is built on the host and copied into the image
- singlestage: Quarkus is built in the docker build in on stage
- multistage: Quarkus is built in the docker build in two stages with docker multistages

#### Type

- jvm
- native
