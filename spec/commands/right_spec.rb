# frozen_string_literal: true

require 'commands/right'

describe Commands::Right do
  subject(:right) { described_class.new(type: type) }
  let(:type) { 'right' }
  let(:table) { instance_double('Table') }
  let(:robot) { instance_double('Robot', placed?: true) }

  describe '#call' do
    it 'rotates the placed robot on a table in the specified direction' do
      expect(robot).to receive(:turn).with(:right)

      right.call(table: table, robot: robot)
    end
  end
end
