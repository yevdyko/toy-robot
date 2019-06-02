# frozen_string_literal: true

require 'commands/move'

describe Commands::Move do
  subject(:move) { described_class.new(type: type) }
  let(:type) { 'move' }
  let(:table) { instance_double('Table', valid_position?: true) }
  let(:robot) do
    instance_double(
      'Robot',
      :x_coordinate= => 0,
      :y_coordinate= => 1,
      placed?: true,
      next_move: [0, 1]
    )
  end

  describe '#call' do
    it 'moves the placed robot on a table to the valid position' do
      expect(robot).to receive(:x_coordinate=).with(0)
      expect(robot).to receive(:y_coordinate=).with(1)

      move.call(table: table, robot: robot)
    end
  end
end
