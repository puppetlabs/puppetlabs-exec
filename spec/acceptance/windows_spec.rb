# run a test task
require 'spec_helper_acceptance'

describe 'windows exec task', if: fact_on(default, 'osfamily') == 'windows' do
  it 'echo' do
    result = run_task(task_name: 'exec::windows', params: "command=\\'echo Otto is the best\\'")
    expect_multiple_regexes(result: result, regexes: [%r{Otto is the best}, %r{Ran on 1 node}])
  end
end
