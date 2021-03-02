# Balena Deploy

Continuously deliver your applications to [BalenaCloud](https://www.balena.io/). A faster drop-in replacement to [Balena Push](https://github.com/theaccordance/balena-push).

## Inputs

### `api-token`

**Required**: A BalenaCloud API Token, used to authenticate with BalenaCloud.  API keys can be created in the [user settings for BalenaCloud](https://dashboard.balena-cloud.com/preferences/access-tokens).

### `application-name`

**Required**: The target application on BalenaCloud

### `application-path`

_Optional_: Provide a sub-path to the location for application being deployed to BalenaCloud.  Defaults to the workspace root.   

### `release-tag-key`

**Required**: Key for Balena release tag.

### `release-tag-value`

**Required**: Value for Balena release tag.

## Workflow Example
```yaml
name: BalenaCloud Push

on:
  push:
    # Only run workflow for pushes to specific branches
    branches:
      - master

jobs:
  balena-push:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v1
    - uses: amingilani/push-to-balenacloud@v1.0.1
      with:
        api-token: ${{secrets.BALENA_API_TOKEN}}
        application-name: ${{secrets.BALENA_APPLICATION_NAME}}
        application-path: "./balena-wpe"
        release-tag-key: Release
        release-tag-value: 1.0
```
