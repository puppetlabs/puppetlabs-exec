# run a test task
require 'spec_helper_acceptance'

describe 'exec task' do
  describe 'puppet exec' do
    it 'single command' do
      result = run_puppet_task(task_name: 'exec', params: { 'command' => 'uname' })
      expect_multiple_regexes(result: result, regexes: [%r{Linux}, %r{Job completed. 1/1 nodes succeeded}])
    end
    it 'single command with args' do
      result = run_puppet_task(task_name: 'exec', params: { 'command' => 'df -h' })
      expect_multiple_regexes(result: result, regexes: [%r{Filesystem.*Size.*Used.*Avail.*Use}, %r{Job completed. 1/1 nodes succeeded}])
    end
  end
end
