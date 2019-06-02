# frozen_string_literal: true

require 'commands/report'

describe Commands::Report do
  subject(:report) { described_class.new(type: type) }
  let(:type) { 'report' }
  let(:table) { instance_double('Table') }
  let(:robot) { instance_double('Robot', x_coordinate: 0, y_coordinate: 0, facing: :north) }

  describe '#call' do
    it 'reports the x-coordinate, y-coordinate and facing of the robot' do
      expect { report.call(table: table, robot: robot) }.to output("0,0,NORTH\n").to_stdout
    end
  end
end
