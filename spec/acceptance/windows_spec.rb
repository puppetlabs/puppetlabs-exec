# run a test task
require 'spec_helper_acceptance'

describe 'windows exec task', if: os[:family] == 'windows' do
  include Beaker::TaskHelper::Inventory
  include BoltSpec::Run

  it 'echo' do
    result = task_run('exec::windows', 'command' => 'echo Otto is the best')

    expect(result.first['status']).to eq 'success'
    expect(result.first['result']['_output']).to match %r{Otto is the best}
  end
end
