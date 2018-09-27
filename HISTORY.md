## 0.2.0
### Summary
This release uses the PDK convert functionality which in return makes the module PDK compliant. It also includes one feature and a roll up of maintenance changes.

### Changed
- Update modules to modulepath [MODULES-5945](https://tickets.puppet.com/browse/MODULES-5945).
- Test Cleanup.
- Edit the acceptance test to call Puppet rather than deprecated Netstat.
- Modulesync changes.

### Added
- Flexibility added to directory management in `tomcat::instance`.
- PDK Convert exec.

### Fixed
- Fix typo in metadata summary.
- Fix minor typo in `failonfail` parameter description.
- Update Tasks Test.
- Addressing Rubocop errors.

## Release 0.1.0
### Summary
This is the initial release of the exec task.

### Features
- Execute a command with arguments.
- Enable/Disable intervleaving of stddout and stderr of the command.
- Enable/Disable fail on failure of the command.

[0.2.0]: https://github.com/puppetlabs/puppetlabs-tomcat/compare/0.1.0...0.2.0
