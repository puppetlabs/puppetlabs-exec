# frozen_string_literal: true

# run a test task
require 'spec_helper_acceptance'

describe 'linux exec task', unless: os[:family] == 'windows' do
  it 'echo' do
    result = run_bolt_task('exec::linux', 'command' => 'echo Miku is the best')
    expect(result.exit_code).to eq 0
    expect(result.stdout).to match %r{Miku is the best}
  end
end
