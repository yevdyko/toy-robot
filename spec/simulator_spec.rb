# frozen_string_literal: true

require 'simulator'

describe Simulator do
  subject(:simulator) do
    described_class.new(
      input_parser: input_parser,
      command_builder: command_builder,
      table: table,
      robot: robot
    )
  end
  let(:input_parser) { instance_double('InputParser', call: ['place', %w[0 0 NORTH]]) }
  let(:command_builder) { instance_double('CommandBuilder', call: place) }
  let(:table) { instance_double('Table', valid_position?: true) }
  let(:robot) { instance_double('Robot', placed?: true) }
  let(:place) { instance_double('Commands::Place', call: Commands::Place.new) }
  let(:input) { 'PLACE 0,0,NORTH' }

  describe '#call' do
    it 'calls an object' do
      expect(simulator.call(input)).to be_a(Commands::Place)
    end
  end
end
