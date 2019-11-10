# Balena Push

Continuously deliver your applications to [BalenaCloud](https://www.balena.io/).

## Inputs

### `api-token`

**Required**: Used by the action to authenticate with your BalenaCloud account.  APIs can be created [here](https://dashboard.balena-cloud.com/preferences/access-tokens) (requires web login).

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
      with:
        # Api token for the Lokalise account
        # with read/write access to the project
        api-token: ${{ secrets.lokalise_token }}
        
        # ID of the project to sync
        project-id: 748610715d8afa5681a4b1.23888602
        
        # The relative directory where language files will be found
        directory: src/main/resources

        # Which format to parse (json or properties)
        format: properties
        
        # Which platform to push new keys to
        platform: web # or android, ios, other
        
        # The filename new keys should be attached to
        filename: messages_%LANG_ISO%.properties
```

```yaml
uses: theaccordnace/balena-push@master
with:
  api-token: ${{secrets.BALENA_API_TOKEN}}
  application-name: ${{secrets.BALENA_APPLICATION_NAME}}
```
