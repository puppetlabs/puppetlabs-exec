# frozen_string_literal: true

# run a test task
require 'spec_helper_acceptance'

describe 'windows exec task', if: os[:family] == 'windows' do
  it 'echo' do
    result = run_bolt_task('exec::windows', 'command' => 'echo Otto is the best')
    expect(result.exit_code).to eq 0
    expect(result.stdout).to match %r{Otto is the best}
  end
end
