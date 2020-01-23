# CircleCi Docker Images

This image contains the base dependencies necessary for building autotelic projects on circleci.

## Dockerhub

This image is [published on dockerhub here](https://hub.docker.com/r/autotelic/circleci-base)

## Recommended Usage

It is recommended to use a specific version rather than rely on the `:latest` tag. The latest
version is listed in the [VERSION](./VERSION) file.

## Release

- Update the version number listed in the [VERSION](./VERSION) file. We follow
[semver](https://semver.org/) rules for versioning.
- Ensure you are logged in to the autotelic docker hub account
- run `bash release`
