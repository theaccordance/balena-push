# Balena Push

Continuously deliver your applications to [BalenaCloud](https://www.balena.io/).

## Inputs

### `api-token`

**Required**: Used by the action to authenticate with your BalenaCloud account.  APIs can be created [here](https://dashboard.balena-cloud.com/preferences/access-tokens) (requires web login).

### `application-name`

**Required**: The application on BalenaCloud you are targeting with the push action.

### `application-path`

_Optional_: Provide a sub-path to the location for application being deployed to BalenaCloud.  Defaults to the workspace root.   

## Example usage

```yaml
uses: theaccordnace/balena-push@master
with:
  api-token: ${{secrets.BALENA_API_TOKEN}}
  application-name: ${{secrets.BALENA_APPLICATION_NAME}}
```
