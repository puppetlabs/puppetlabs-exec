
# exec

#### Table of Contents

1. [Description](#description)
2. [Requirements](#requirements)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Getting help - Some Helpful commands](#getting-help)

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

To run acceptance tests against Windows machines locally, ensure that the `BEAKER_password` environment variable has been set to the password of the Administrator user of the target machine.

For an extensive list of supported operating systems, see [metadata.json](https://github.com/puppetlabs/puppetlabs-exec/blob/main/metadata.json)

## Getting Help

To display help for the package task, run `puppet task show package`

To show help for the task CLI, run `puppet task run --help` or `bolt task run --help`

## Development

Acceptance tests for this module leverage [puppet_litmus](https://github.com/puppetlabs/puppet_litmus).
To run the acceptance tests follow the instructions [here](https://github.com/puppetlabs/puppet_litmus/wiki/Tutorial:-use-Litmus-to-execute-acceptance-tests-with-a-sample-module-(MoTD)#install-the-necessary-gems-for-the-module).
You can also find a tutorial and walkthrough of using Litmus and the PDK on [YouTube](https://www.youtube.com/watch?v=FYfR7ZEGHoE).

If you run into an issue with this module, or if you would like to request a feature, please [file a ticket](https://tickets.puppetlabs.com/browse/MODULES/).
Every Monday the Puppet IA Content Team has [office hours](https://puppet.com/community/office-hours) in the [Puppet Community Slack](http://slack.puppet.com/), alternating between an EMEA friendly time (1300 UTC) and an Americas friendly time (0900 Pacific, 1700 UTC).

If you have problems getting this module up and running, please [contact Support](http://puppetlabs.com/services/customer-support).

If you submit a change to this module, be sure to regenerate the reference documentation as follows:

```bash
puppet strings generate --format markdown --out REFERENCE.md
```
