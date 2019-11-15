# Balena Push

Continuously deliver your applications to [BalenaCloud](https://www.balena.io/).

## Inputs

### `api-token`

**Required**: Used by the action to authenticate with your BalenaCloud account.  API keys can be created [here](https://dashboard.balena-cloud.com/preferences/access-tokens) (requires web login).

### `application-name`

**Required**: The application on BalenaCloud you are targeting with the push action.

### `application-path`

_Optional_: Provide a sub-path to the location for application being deployed to BalenaCloud.  Defaults to the workspace root.   

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
    - uses: actions/setup-node@v1.1.0
    - uses: theaccordance/balena-push@v1.0.0
      with:
        api-token: ${{secrets.BALENA_API_TOKEN}}
        application-name: ${{secrets.BALENA_APPLICATION_NAME}}
        application-path: "./balena-wpe"
```
