
# exec

#### Table of Contents

1. [Description](#description)
2. [Requirements](#requirements)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [License](#license)
7. [Getting help - Some Helpful commands](#getting-help)

## Description

This module provides the exec task. This task allows you to run an arbitary command with arguments.

## Requirements
This module is compatible with Puppet Enterprise and Puppet Bolt.

* To run tasks with Puppet Enterprise, PE 2018.1 or later must be installed on the machine from which you are running task commands. Machines receiving task requests must be Puppet agents.

* To run tasks with Puppet Bolt, Bolt 1.0 or later must be installed on the machine from which you are running task commands. Machines receiving task requests must have SSH or WinRM services enabled.

## Usage

To run an exec task, use the task command, specifying the command to be executed.

* With PE on the command line, run `puppet task run exec command=<COMMAND>`.
* With Bolt on the command line, run `bolt task run exec command=<COMMAND>`.

For example, to view the free disk space of a host, run:

* With PE, run `puppet task run exec command="df -h" --nodes neptune`.
* With Bolt, run `bolt task run exec command="df -h" --nodes neptune --modulepath ~/modules`.

This example is specifically for Windows using Powershell and returns a list of features installed on the server:
`puppet task run exec command='powershell -command "Get-WindowsFeature  | Where Installed | Format-List -Property Name"' --nodes neptune`

You can also run tasks in the PE console. See PE task documentation for complete information.

## Reference

For detailed reference information, see the [REFERENCE.md](https://github.com/puppetlabs/puppetlabs-exec/blob/main/REFERENCE.md)

## Limitations

For an extensive list of supported operating systems, see [metadata.json](https://github.com/puppetlabs/puppetlabs-exec/blob/main/metadata.json)

## License

This codebase is licensed under the Apache2.0 licensing, however due to the nature of the codebase the open source dependencies may also use a combination of [AGPL](https://www.gnu.org/licenses/agpl-3.0.en.html), [BSD-2](https://opensource.org/license/bsd-2-claus), [BSD-3](https://opensource.org/license/bsd-3-claus), [GPL2.0](https://www.gnu.org/licenses/old-licenses/gpl-2.0.en.html), [LGPL](https://opensource.org/license/lgpl-3-0/), [MIT](https://opensource.org/license/mit/) and [MPL](https://opensource.org/license/mpl-2-0/) Licensing.

## Getting Help

To display help for the package task, run `puppet task show package`

To show help for the task CLI, run `puppet task run --help` or `bolt task run --help`

## Development

Acceptance tests are ran using[puppet_litmus](https://github.com/puppetlabs/puppet_litmus).
To run the acceptance tests follow the instructions [here](https://github.com/puppetlabs/puppet_litmus/wiki/Tutorial:-use-Litmus-to-execute-acceptance-tests-with-a-sample-module-(MoTD)#install-the-necessary-gems-for-the-module).
You can also find a tutorial and walkthrough of using Litmus and the PDK on [YouTube](https://www.youtube.com/watch?v=FYfR7ZEGHoE).

If you run into an issue with this module, or if you would like to request a feature, please file an issue on the repo.

If you have problems getting this module up and running, please [contact Support](http://puppetlabs.com/services/customer-support).

If you submit a change to this module, be sure to regenerate the reference documentation as follows:

```bash
puppet strings generate --format markdown --out REFERENCE.md
```
