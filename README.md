## action-ceedling-unit-test
Github action for running unit tests using Ceedling

## Inputs

### `unit-test-path`

**Required** Absolute path to the Ceedling project yaml file.

## Example Usage
```yaml
name: Unit Tests
on:
  push:
    branches:
     - 'master'
  
jobs:
  build:
    runs-on: ubuntu-latest    
    
    steps:
    - name: Checkout Repository
      uses: actions/checkout@v3
      
    - name: Run Unit Tests
      uses: sjscymru/action-ceedling-unit-test@v1.0
      with:
        unit-test-path: '${{ github.workspace }}/unit_tests'
```
