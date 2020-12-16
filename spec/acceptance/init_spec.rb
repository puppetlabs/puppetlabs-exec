# frozen_string_literal: true

# run a test task
require 'spec_helper_acceptance'

describe 'exec task' do
  describe 'puppet exec' do
    it 'single command with args' do
      result = run_bolt_task('exec', 'command' => 'echo This is a test')
      expect(result.exit_code).to eq 0
      expect(result.stdout).to match %r{This is a test}
    end
  end
end
