require 'bolt_spec/run'
require 'beaker-pe'
require 'beaker-puppet'
require 'puppet'
require 'beaker-rspec'
require 'beaker/puppet_install_helper'
require 'beaker/module_install_helper'
require 'beaker-task_helper'
require 'beaker-task_helper/inventory'

run_puppet_install_helper
configure_type_defaults_on(hosts)
install_ca_certs unless pe_install?
install_module_on(hosts)
install_module_dependencies_on(hosts)

def task_run(task_name, params)
  bolt_config = { 'modulepath' => File.join(Dir.pwd, 'spec', 'fixtures', 'modules') }
  inventory = hosts_to_inventory.merge('features' => ['puppet-agent'])
  run_task(task_name, 'default', params, config: bolt_config, inventory: inventory)
end

RSpec.configure do |c|
  # Readable test descriptions
  c.formatter = :documentation

  # Configure all nodes in nodeset
  c.before :suite do
    run_puppet_access_login(user: 'admin') if pe_install?
  end
end
