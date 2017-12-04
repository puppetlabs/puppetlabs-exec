# run a test task
require 'spec_helper_acceptance'

def args_command_line_text
  command_text = 'command='
  if fact_on(default, 'osfamily') == 'windows'
    command_text << "\\"
  end
  command_text << "'puppet man module --render-as s"
  if fact_on(default, 'osfamily') == 'windows'
    command_text << "\\"
  end
  command_text << "'"
  command_text
end

describe 'exec task' do
  describe 'puppet exec' do
    it 'single command' do
      result = run_task(task_name: 'exec', params: 'command=netstat')
      expect_multiple_regexes(result: result, regexes: [%r{Proto.*Local Address.*Foreign Address.*(S|s)tate}, %r{Job completed. 1/1 nodes succeeded|Ran on 1 node}])
    end
    it 'single command with args' do
      result = run_task(task_name: 'exec', params: args_command_line_text)
      expect_multiple_regexes(result: result, regexes: [%r{.*Creates, installs and searches for modules on the Puppet Forge.*}, %r{Job completed. 1/1 nodes succeeded|Ran on 1 node}])
    end
  end
end
