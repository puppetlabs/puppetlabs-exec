# run a test task
require 'spec_helper_acceptance'

describe 'linux exec task', unless: fact_on(default, 'osfamily') == 'windows' do
  it 'echo' do
    result = run_task(task_name: 'exec::linux', params: "command='echo Miku is the best'")
    expect_multiple_regexes(result: result, regexes: [%r{Miku is the best}, %r{Ran on 1 node}])
  end
end
