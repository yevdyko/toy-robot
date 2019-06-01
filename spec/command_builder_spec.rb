# frozen_string_literal: true

require 'command_builder'

describe CommandBuilder do
  subject(:command_builder) { described_class.new }

  describe '#call' do
    context 'when type is valid' do
      context 'when type is place' do
        it 'returns an instance of Commands::Place' do
          expect(command_builder.call(type: 'place', params: %w[0 0 NORTH])).to be_instance_of(Commands::Place)
        end
      end

      context 'when type is move' do
        it 'returns an instance of Commands::Move' do
          expect(command_builder.call(type: 'move', params: [])).to be_instance_of(Commands::Move)
        end
      end

      context 'when type is left' do
        it 'returns an instance of Commands::Left' do
          expect(command_builder.call(type: 'left', params: [])).to be_instance_of(Commands::Left)
        end
      end

      context 'when type is right' do
        it 'returns an instance of Commands::Right' do
          expect(command_builder.call(type: 'right', params: [])).to be_instance_of(Commands::Right)
        end
      end

      context 'when type is report' do
        it 'returns an instance of Commands::Report' do
          expect(command_builder.call(type: 'report', params: [])).to be_instance_of(Commands::Report)
        end
      end
    end

    context 'when type is invalid' do
      it 'raises command not found error' do
        expect { command_builder.call(type: 'read', params: []) }.to raise_error("Command 'read' not found")
      end
    end
  end
end
