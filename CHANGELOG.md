# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.4.0] - 2024-03-21

### Fixing availability of databricks pools
- Added list of allowed type of pools to allow spot and warm to work from data factory
- switched username and password to hidden so that the fields are hidden within the databricks

## [1.3.0] - 2024-03-11

### Fixing availability of databricks pools
- Pools should be set to "SPOT_AZURE" instead to be inline with the config of our current pools

## [1.1.0] - 2024-03-04

### Trying to bump to minor version to trigger terraform module update

- Bumping to minor version to try and update terraform module

## [1.0.1] - 2024-03-04

### fixed

- Default type should be 'fixed' instead of 'unlimited'
- the "hidden" value for docker attributes was "false" (string) instead of _false_ (boolean, without quotes). it is now fixed

## [1.0.0] - 2024-01-10

### Added

- Initial Release to open source
