# frozen_string_literal: true

require_relative '../lib/simulator'

simulator = Simulator.new

begin
  ARGF.each_line do |line|
    simulator.call(line.strip)
  end
rescue SystemExit, Interrupt
  exit(1)
rescue StandardError => e
  puts e.message
  retry
end
