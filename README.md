# Docker image for red_oxide
All I do is provide an Alpine based docker image.
The actual software does not change and you still have to supply the CLI commands yourself.

This can be done via docker-compose, Unraid or a simple Linux CLI command.
```sh
docker run ghcr.io/schaka/red-oxide-docker:latest "/app/red_oxide --help"
```

For Unraid:
- Extra Parameters: `--user 99:100`
- Post Arguments: `"/app/red_oxide --help"` (yes, with double quotes)