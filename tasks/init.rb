#!/opt/puppetlabs/puppet/bin/ruby
# frozen_string_literal: true

require 'json'
require 'open3'

def get3(command)
  stdout, stderr, status = Open3.capture3(command)

  { stdout: stdout.strip,
    stderr: stderr.strip,
    exit_code: status.exitstatus }
end

def get2(command)
  output, exit_code = Open3.popen2({}, command, err: [:child, :out]) do |_i, o, w|
    out = o.read
    exit_code = w.value.exitstatus
    [out, exit_code]
  end

  { _output: output,
    exit_code: exit_code }
end

def default_true(params, k)
  v = params[k]
  return unless v.nil?
  true
end

params = JSON.parse(STDIN.read)
command = params['command']
failonfail = default_true(params, 'failonfail')
interleave = default_true(params, 'interleave')

result = interleave ? get2(command) : get3(command)
puts result.to_json

if failonfail
  exit result[:exit_code]
else
  exit 0
end
