[ARCHIVED]
The latest supported version is on https://github.com/protofire/filecoin-CID-checker

# CID-CHECKER Docker image

The image uses as part of the solution for the cid-checker collects data from the endpoint and provides it to the external DB.

### CI Logic:
CI verifies that the Dockerfile can build successfully.

### CD Logic:
CD has mandatory requirements to bump a new image version in the release.yaml file.
If the file does not change, the Build will fail with exit code 1.

Also, CD push image to two repositories where one is DockerHub and it is publicly available.

URL for DockerHub repository: [https://hub.docker.com/r/protofire/cid-checker](https://hub.docker.com/r/protofire/cid-checker)
