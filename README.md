
# exec

#### Table of Contents

1. [Description](#description)
2. [Requirements](#requirements)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Getting help - Some Helpful commands](#getting-help)

## Description

This module provides the exec task. This task allows you to run an arbitary command with arguments.

## Requirements
This module is compatible with Puppet Enterprise and Puppet Bolt.

* To run tasks with Puppet Enterprise, PE 2017.3 or later must be installed on the machine from which you are running task commands. Machines receiving task requests must be Puppet agents.

* To run tasks with Puppet Bolt, Bolt 0.5 or later must be installed on the machine from which you are running task commands. Machines receiving task requests must have SSH or WinRM services enabled.

## Usage

To run an exec task, use the task command, specifying the command to be executed.

* With PE on the command line, run `puppet task run exec command=<COMMAND>`.
* With Bolt on the command line, run `bolt task run exec command=<COMMAND>`.

For example, to view the free disk space of a host, run:

* With PE, run `puppet task run exec command="df -h" --nodes neptune`.
* With Bolt, run `bolt task run exec command="df -h" --nodes neptune --modulepath ~/modules`.

You can also run tasks in the PE console. See PE task documentation for complete information.

## Reference

To view the available actions and parameters, on the command line, run `puppet task show exec` or see the exec module page on the [Forge](https://forge.puppet.com/puppetlabs/exec/tasks).

## Getting Help

To display help for the package task, run `puppet task show package`

To show help for the task CLI, run `puppet task run --help` or `bolt task run --help`

