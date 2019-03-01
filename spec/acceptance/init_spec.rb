# run a test task
require 'spec_helper_acceptance'

describe 'exec task' do
  include Beaker::TaskHelper::Inventory
  include BoltSpec::Run

  describe 'puppet exec' do
    it 'single command' do
      result = task_run('exec', 'command' => 'puppet')

      expect(result.first['result']['exit_code']).to eq 0
      expect(result.first['result']['_output']).to match %r{See 'puppet help' for help on available puppet subcommands}
    end
    it 'single command with args' do
      result = task_run('exec', 'command' => 'puppet help module search')
      expect(result.first['result']['exit_code']).to eq 0
      expect(result.first['result']['_output']).to match %r{.*USAGE: puppet module search <search_term>.*}
    end
  end
end
