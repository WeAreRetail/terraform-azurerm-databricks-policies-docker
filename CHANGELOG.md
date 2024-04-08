# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [2.5.2] - 2024-04-08

### Breaking change

Disable Photon by default.

### Fix

Rollback `policy_overrides` variable type to `any` as Terraform converts numbers to strings when mixing map and JSON.

## [1.5.1] - 2024-03-30

Fix `policy_overrides` variable type. Account for null.

## [1.5.0] - 2024-03-30

- Add an `is_job_policy` informational variable and output. This is an informational variable only, it doesn't change the behavior.

## [1.4.0] - 2024-03-21

### Update Databricks pools configuration

- Added list of allowed types of pools to allow spot and warm to work from Data Factory
- Switched username and password to hidden so that the fields are hidden within the Databricks

## [1.3.0] - 2024-03-11

### Fixing the availability of Databricks pools

- Pools should be set to "SPOT_AZURE" instead to be inline with the config of our current pools

## [1.1.0] - 2024-03-04

### Trying to bump the minor version to trigger the terraform module update

- Bumping the minor version to try and update the terraform module

## [1.0.1] - 2024-03-04

### fixed

- The default type should be 'fixed' instead of 'unlimited'
- the "hidden" value for docker attributes was "false" (string) instead of _false_ (boolean, without quotes). it is now fixed

## [1.0.0] - 2024-01-10

### Added

- Initial Release to Open Source
