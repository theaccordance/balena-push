# Balena Push
[![CodeFactor](https://www.codefactor.io/repository/github/theaccordance/balena-push/badge)](https://www.codefactor.io/repository/github/theaccordance/balena-push)
![Latest Version](https://img.shields.io/github/v/release/theaccordance/balena-push?label=Latest%20Version)
![Last Commit](https://img.shields.io/github/last-commit/theaccordance/balena-push)
![Open Bugs](https://img.shields.io/github/issues/theaccordance/balena-push/bug?color=red&label=Bugs)
![Feature Requests](https://img.shields.io/github/issues/theaccordance/balena-push/enhancement?color=blue&label=Feature%20Requests)
![Forks](https://img.shields.io/github/forks/theaccordance/balena-push?label=Forks)
![Stars](https://img.shields.io/github/stars/theaccordance/balena-push?label=Stars)
![License](https://img.shields.io/github/license/theaccordance/balena-push)


Continuously deliver your applications to [BalenaCloud](https://www.balena.io/).

## Table of Contents
* [Inputs](#inputs)
* [Examples](#examples)
  * [Pushing the project root](#pushing-the-project-root)
  * [Pushing a project subdirectory](#pushing-a-project-sub-directory)

## Inputs

| Attribute          | Required?  | Purpose                                                                                                                                                                                        |
|--------------------|------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `api-token`        | **Yes***   | A BalenaCloud API Token, used to authenticate with BalenaCloud.  API keys can be created in the [user settings for BalenaCloud](https://dashboard.balena-cloud.com/preferences/access-tokens). |
| `application-name` | **Yes***   | The target application on BalenaCloud                                                                                                                                                          |
| `application-path` | _Optional_ | Provide a sub-path to the location for application being deployed to BalenaCloud.  Defaults to the workspace root.                                                                             |

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
