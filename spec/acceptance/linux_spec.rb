# run a test task
require 'spec_helper_acceptance'

describe 'linux exec task', unless: fact_on(default, 'osfamily') == 'windows' do
  include Beaker::TaskHelper::Inventory
  include BoltSpec::Run

  it 'echo' do
    result = task_run('exec::linux', 'command' => 'echo Miku is the best')

    expect(result.first['status']).to eq 'success'
    expect(result.first['result']['_output']).to match %r{Miku is the best}
  end
end
