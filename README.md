# Balena Push

Continuously deliver your applications to [BalenaCloud](https://www.balena.io/).

## Table of Contents
* [Inputs](#inputs)
* [Examples](#examples)
  * [Pushing the project root](#pushing-the-project-root)
  * [Pushing a project subdirectory](#pushing-a-project-sub-directory)

## Inputs

| Attribute  | Required?  | Purpose |
|------------|------------|---------|
| `api-token` | **Yes***   | A BalenaCloud API Token, used to authenticate with BalenaCloud.  API keys can be created in the [user settings for BalenaCloud](https://dashboard.balena-cloud.com/preferences/access-tokens). |
| `application-name` | **Yes***   | The target application on BalenaCloud |
| `application-path` | _Optional_ | Provide a sub-path to the location for application being deployed to BalenaCloud.  Defaults to the workspace root. |

## Examples

### Pushing the project root
```yaml
name: Balena Push

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
    - uses: theaccordance/balena-push@v1.1.0
      with:
        api-token: ${{secrets.BALENA_API_TOKEN}}
        application-name: ${{secrets.BALENA_APPLICATION_NAME}}
```

### Pushing a project sub-directory
```yaml
name: Balena Push

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
    - uses: theaccordance/balena-push@v1.1.0
      with:
        api-token: ${{secrets.BALENA_API_TOKEN}}
        application-name: ${{secrets.BALENA_APPLICATION_NAME}}
        application-path: "./balena-wpe"
```
