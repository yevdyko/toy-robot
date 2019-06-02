# frozen_string_literal: true

require 'commands/left'

describe Commands::Left do
  subject(:left) { described_class.new(type: type) }
  let(:type) { 'left' }
  let(:table) { instance_double('Table') }
  let(:robot) { instance_double('Robot', placed?: true) }

  describe '#call' do
    it 'rotates the placed robot on a table in the specified direction' do
      expect(robot).to receive(:turn).with(:left)

      left.call(table: table, robot: robot)
    end
  end
end
