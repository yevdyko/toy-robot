# frozen_string_literal: true

require 'commands/place'

describe Commands::Place do
  subject(:place) { described_class.new(type: type, params: params) }
  let(:type) { 'place' }
  let(:params) { %w[0 0 NORTH] }
  let(:table) { instance_double('Table', valid_position?: true) }
  let(:robot) do
    instance_double(
      'Robot',
      :x_coordinate= => 0,
      :y_coordinate= => 0,
      :facing= => :north,
      valid_facing?: true
    )
  end

  describe '#call' do
    it 'places the robot on the table for valid params' do
      expect(robot).to receive(:x_coordinate=).with(0)
      expect(robot).to receive(:y_coordinate=).with(0)
      expect(robot).to receive(:facing=).with(:north)

      place.call(table: table, robot: robot)
    end
  end
end
