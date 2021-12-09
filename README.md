# Quarkus Image Performance

## Performance Table

| Image              | Compatibility | Convenience | Execution Time | Size   |
|--------------------|---------------|-------------|----------------|--------|
| singlestage-native | 3             | 2           | 1.123 s        | 2.32GB |
| singlestage-jvm    | 3             | 2           | 1.565 s        | 623MB  |
| multistage-jvm     | 3             | 2           | 1.308 s        | 241MB  |
| external-jvm       | 1             | 3           | 1.784 s        | 241MB  |
| multistage-native  | 3             | 2           | 1.110 s        | 120MB  |
| external-native    | 1             | 3           | 1.153 s        | 119MB  |

### Compatibility

Number of operating systems it is executable on. This measurement includes only:

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
