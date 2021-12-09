# Quarkus Image Performance

## Size

| Image              | Compatibility | Convenience | Execution Time | Size   |
|--------------------|---------------|-------------|----------------|--------|
| singlestage-native | 3             | 2           | 1.123 s        | 2.32GB |
| singlestage-jvm    | 3             | 2           | 1.565 s        | 623MB  |
| multistage-jvm     | 3             | 2           | 1.308 s        | 241MB  |
| external-jvm       | 1             | 3           | 1.784 s        | 241MB  |
| multistage-native  | 3             | 2           | 1.110 s        | 120MB  |
| external-native    | 1             | 3           | 1.153 s        | 119MB  |
