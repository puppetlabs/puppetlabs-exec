
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

You can also run tasks in the PE console. See PE task documentation for complete information.

## Reference

For detailed reference information, see the [REFERENCE.md](https://github.com/puppetlabs/puppetlabs-exec/blob/master/REFERENCE.md)

## Limitations

To run acceptance tests against Windows machines locally, ensure that the `BEAKER_password` environment variable has been set to the password of the Administrator user of the target machine.

For an extensive list of supported operating systems, see [metadata.json](https://github.com/puppetlabs/puppetlabs-exec/blob/master/metadata.json)

## Getting Help

To display help for the package task, run `puppet task show package`

To show help for the task CLI, run `puppet task run --help` or `bolt task run --help`

## Development

We are experimenting with a new tool for running acceptance tests. Its name is [puppet_litmus](https://github.com/puppetlabs/puppet_litmus) this replaces beaker as the test runner. To run the acceptance tests follow the instructions from this point [here](https://github.com/puppetlabs/puppet_litmus/wiki/Tutorial:-use-Litmus-to-execute-acceptance-tests-with-a-sample-module-(MoTD)#install-the-necessary-gems-for-the-module).
