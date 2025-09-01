<!-- markdownlint-disable MD024 -->
# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/) and this project adheres to [Semantic Versioning](http://semver.org).

## [v4.0.0](https://github.com/puppetlabs/puppetlabs-exec/tree/v4.0.0) - 2025-09-01

[Full Changelog](https://github.com/puppetlabs/puppetlabs-exec/compare/v3.1.0...v4.0.0)

### Changed

- (CAT-2371) Prepare module for Puppetcore / Drop Support for Puppet 7 [#245](https://github.com/puppetlabs/puppetlabs-exec/pull/245) ([david22swan](https://github.com/david22swan))

### Added

- (MODULES-11579) Add support for powershell CLI to exec::windows [#246](https://github.com/puppetlabs/puppetlabs-exec/pull/246) ([shubhamshinde360](https://github.com/shubhamshinde360))

### Other

- (CAT-2296) Update github runner image to ubuntu-24.04 [#244](https://github.com/puppetlabs/puppetlabs-exec/pull/244) ([shubhamshinde360](https://github.com/shubhamshinde360))

## [v3.1.0](https://github.com/puppetlabs/puppetlabs-exec/tree/v3.1.0) - 2024-12-16

[Full Changelog](https://github.com/puppetlabs/puppetlabs-exec/compare/v3.0.0...v3.1.0)

### Fixed

- Reinstate Ubuntu-2004 github actions runner image for nightly tests and CI [#239](https://github.com/puppetlabs/puppetlabs-exec/pull/239) ([shubhamshinde360](https://github.com/shubhamshinde360))

## [v3.0.0](https://github.com/puppetlabs/puppetlabs-exec/tree/v3.0.0) - 2023-04-04

[Full Changelog](https://github.com/puppetlabs/puppetlabs-exec/compare/v2.2.1...v3.0.0)

### Changed

- (Cont 777) - add puppet 8 support/drop puppet 6 support [#213](https://github.com/puppetlabs/puppetlabs-exec/pull/213) ([jordanbreen28](https://github.com/jordanbreen28))

## [v2.2.1](https://github.com/puppetlabs/puppetlabs-exec/tree/v2.2.1) - 2023-03-23

[Full Changelog](https://github.com/puppetlabs/puppetlabs-exec/compare/v2.2.0...v2.2.1)

### Fixed

- pdksync - (CONT-189) Remove support for RedHat6 / OracleLinux6 [#203](https://github.com/puppetlabs/puppetlabs-exec/pull/203) ([david22swan](https://github.com/david22swan))
- pdksync - (CONT-130) - Dropping Support for Debian 9 [#200](https://github.com/puppetlabs/puppetlabs-exec/pull/200) ([jordanbreen28](https://github.com/jordanbreen28))

## [v2.2.0](https://github.com/puppetlabs/puppetlabs-exec/tree/v2.2.0) - 2022-10-03

[Full Changelog](https://github.com/puppetlabs/puppetlabs-exec/compare/v2.1.0...v2.2.0)

### Added

- pdksync - (GH-cat-11) Certify Support for Ubuntu 22.04 [#197](https://github.com/puppetlabs/puppetlabs-exec/pull/197) ([david22swan](https://github.com/david22swan))
- pdksync - (GH-cat-12) Add Support for Redhat 9 [#196](https://github.com/puppetlabs/puppetlabs-exec/pull/196) ([david22swan](https://github.com/david22swan))

### Fixed

- (MAINT) Drop Support for Windows Server 2008 R2. [#198](https://github.com/puppetlabs/puppetlabs-exec/pull/198) ([jordanbreen28](https://github.com/jordanbreen28))

## [v2.1.0](https://github.com/puppetlabs/puppetlabs-exec/tree/v2.1.0) - 2022-05-30

[Full Changelog](https://github.com/puppetlabs/puppetlabs-exec/compare/v2.0.0...v2.1.0)

### Added

- pdksync - (FM-8922) - Add Support for Windows 2022 [#184](https://github.com/puppetlabs/puppetlabs-exec/pull/184) ([david22swan](https://github.com/david22swan))
- pdksync - (IAC-1753) - Add Support for AlmaLinux 8 [#179](https://github.com/puppetlabs/puppetlabs-exec/pull/179) ([david22swan](https://github.com/david22swan))
- pdksync - (IAC-1751) - Add Support for Rocky 8 [#178](https://github.com/puppetlabs/puppetlabs-exec/pull/178) ([david22swan](https://github.com/david22swan))

### Fixed

- pdksync - (GH-iac-334) Remove Support for Ubuntu 16.04 [#187](https://github.com/puppetlabs/puppetlabs-exec/pull/187) ([david22swan](https://github.com/david22swan))
- pdksync - (IAC-1787) Remove Support for CentOS 6 [#182](https://github.com/puppetlabs/puppetlabs-exec/pull/182) ([david22swan](https://github.com/david22swan))
- pdksync - (IAC-1598) - Remove Support for Debian 8 [#177](https://github.com/puppetlabs/puppetlabs-exec/pull/177) ([david22swan](https://github.com/david22swan))

## [v2.0.0](https://github.com/puppetlabs/puppetlabs-exec/tree/v2.0.0) - 2021-08-25

[Full Changelog](https://github.com/puppetlabs/puppetlabs-exec/compare/v1.0.0...v2.0.0)

### Added

- pdksync - (IAC-1720) - Add Support for Ubuntu 20.04 [#175](https://github.com/puppetlabs/puppetlabs-exec/pull/175) ([david22swan](https://github.com/david22swan))
- pdksync - (IAC-1709) - Add Support for Debian 11 [#173](https://github.com/puppetlabs/puppetlabs-exec/pull/173) ([david22swan](https://github.com/david22swan))
- pdksync - (IAC-1719) - Add Support for Debian 10 [#172](https://github.com/puppetlabs/puppetlabs-exec/pull/172) ([david22swan](https://github.com/david22swan))

## [v1.0.0](https://github.com/puppetlabs/puppetlabs-exec/tree/v1.0.0) - 2021-03-02

[Full Changelog](https://github.com/puppetlabs/puppetlabs-exec/compare/v0.9.0...v1.0.0)

### Changed

- Update metadata.json - remove ubuntu 14.04 [#157](https://github.com/puppetlabs/puppetlabs-exec/pull/157) ([daianamezdrea](https://github.com/daianamezdrea))
- pdksync -  Remove RHEL 5 family support [#155](https://github.com/puppetlabs/puppetlabs-exec/pull/155) ([sanfrancrisko](https://github.com/sanfrancrisko))
- pdksync - Remove Puppet 5 from testing and bump minimal version to 6.0.0 [#152](https://github.com/puppetlabs/puppetlabs-exec/pull/152) ([carabasdaniel](https://github.com/carabasdaniel))

## [v0.9.0](https://github.com/puppetlabs/puppetlabs-exec/tree/v0.9.0) - 2021-01-19

[Full Changelog](https://github.com/puppetlabs/puppetlabs-exec/compare/v0.8.0...v0.9.0)

### Added

- pdksync - (feat) - Add support for Puppet 7 [#143](https://github.com/puppetlabs/puppetlabs-exec/pull/143) ([daianamezdrea](https://github.com/daianamezdrea))
- (GH-31) Update init types [#138](https://github.com/puppetlabs/puppetlabs-exec/pull/138) ([pmcmaw](https://github.com/pmcmaw))

## [v0.8.0](https://github.com/puppetlabs/puppetlabs-exec/tree/v0.8.0) - 2020-10-06

[Full Changelog](https://github.com/puppetlabs/puppetlabs-exec/compare/v0.7.0...v0.8.0)

### Added

- pdksync - (IAC-973) - Update travis/appveyor to run on new default branch main [#129](https://github.com/puppetlabs/puppetlabs-exec/pull/129) ([david22swan](https://github.com/david22swan))

### Fixed

- (IAC-985) - Removal of Inappropriate terminology [#134](https://github.com/puppetlabs/puppetlabs-exec/pull/134) ([david22swan](https://github.com/david22swan))

## [v0.7.0](https://github.com/puppetlabs/puppetlabs-exec/tree/v0.7.0) - 2020-01-21

[Full Changelog](https://github.com/puppetlabs/puppetlabs-exec/compare/v0.6.0...v0.7.0)

### Added

- pdksync - "MODULES-10242 Add ubuntu14 support back to the modules" [#105](https://github.com/puppetlabs/puppetlabs-exec/pull/105) ([sheenaajay](https://github.com/sheenaajay))

## [v0.6.0](https://github.com/puppetlabs/puppetlabs-exec/tree/v0.6.0) - 2019-11-12

[Full Changelog](https://github.com/puppetlabs/puppetlabs-exec/compare/v0.5.0...v0.6.0)

### Changed

- pdksync - FM-8499 - remove ubuntu14 support [#99](https://github.com/puppetlabs/puppetlabs-exec/pull/99) ([lionce](https://github.com/lionce))

### Added

- (FM-8687) - Addition of Support for CentOS 8 [#101](https://github.com/puppetlabs/puppetlabs-exec/pull/101) ([david22swan](https://github.com/david22swan))

## [v0.5.0](https://github.com/puppetlabs/puppetlabs-exec/tree/v0.5.0) - 2019-09-09

[Full Changelog](https://github.com/puppetlabs/puppetlabs-exec/compare/0.4.0...v0.5.0)

### Changed

- pdksync - (MODULES-8444) - Raise lower Puppet bound [#75](https://github.com/puppetlabs/puppetlabs-exec/pull/75) ([david22swan](https://github.com/david22swan))

### Added

- (FM-8217) Port module to litmus [#83](https://github.com/puppetlabs/puppetlabs-exec/pull/83) ([michaeltlombardi](https://github.com/michaeltlombardi))
- (FM-8152) Add Windows Server 2019 support [#80](https://github.com/puppetlabs/puppetlabs-exec/pull/80) ([eimlav](https://github.com/eimlav))
- (FM-8039) Add RedHat 8 support [#79](https://github.com/puppetlabs/puppetlabs-exec/pull/79) ([eimlav](https://github.com/eimlav))
- [FM-7943] Puppet Strings [#78](https://github.com/puppetlabs/puppetlabs-exec/pull/78) ([carabasdaniel](https://github.com/carabasdaniel))

## [0.4.0](https://github.com/puppetlabs/puppetlabs-exec/tree/0.4.0) - 2019-04-05

[Full Changelog](https://github.com/puppetlabs/puppetlabs-exec/compare/0.3.0...0.4.0)

### Added

- (SEN-788) Make linux and windows private [#68](https://github.com/puppetlabs/puppetlabs-exec/pull/68) ([conormurray95](https://github.com/conormurray95))
- (SEN-788) Add discovery extension metadata [#67](https://github.com/puppetlabs/puppetlabs-exec/pull/67) ([conormurray95](https://github.com/conormurray95))
- (SEN-788) Add implementation metadata [#66](https://github.com/puppetlabs/puppetlabs-exec/pull/66) ([conormurray95](https://github.com/conormurray95))

### Fixed

- (MODULES-8717) Move testing from task_helper to BoltSpec & Fix BoltSpec dependency issue [#62](https://github.com/puppetlabs/puppetlabs-exec/pull/62) ([HelenCampbell](https://github.com/HelenCampbell))
- pdksync - (FM-7655) Fix rubygems-update for ruby < 2.3 [#55](https://github.com/puppetlabs/puppetlabs-exec/pull/55) ([tphoney](https://github.com/tphoney))
- (DI-3301) Linux task should use eval [#49](https://github.com/puppetlabs/puppetlabs-exec/pull/49) ([davejohnston](https://github.com/davejohnston))

## [0.3.0](https://github.com/puppetlabs/puppetlabs-exec/tree/0.3.0) - 2018-09-28

[Full Changelog](https://github.com/puppetlabs/puppetlabs-exec/compare/0.2.0...0.3.0)

### Added

- (DI-3301) Adding agentless windows and linux exec tasks [#43](https://github.com/puppetlabs/puppetlabs-exec/pull/43) ([HairyMike](https://github.com/HairyMike))
- (FM-7262) - Addition of support for ubuntu 18.04 [#32](https://github.com/puppetlabs/puppetlabs-exec/pull/32) ([david22swan](https://github.com/david22swan))
- [FM-7057] Addition of Debian 9 support to exec [#30](https://github.com/puppetlabs/puppetlabs-exec/pull/30) ([david22swan](https://github.com/david22swan))
- (MODULES-6609) Update metadata for Win2k8R2 [#23](https://github.com/puppetlabs/puppetlabs-exec/pull/23) ([jarretlavallee](https://github.com/jarretlavallee))

## [0.2.0](https://github.com/puppetlabs/puppetlabs-exec/tree/0.2.0) - 2018-02-15

[Full Changelog](https://github.com/puppetlabs/puppetlabs-exec/compare/0.1.0...0.2.0)

## [0.1.0](https://github.com/puppetlabs/puppetlabs-exec/tree/0.1.0) - 2017-10-11

[Full Changelog](https://github.com/puppetlabs/puppetlabs-exec/compare/994734837da52c7d2ca987295da7eff7ffc7ec74...0.1.0)
