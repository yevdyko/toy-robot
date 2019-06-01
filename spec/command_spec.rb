# frozen_string_literal: true

require 'command'

describe Command do
  subject(:command) { described_class.new }

  describe '#initialize' do
    it 'returns a default type value' do
      expect(command.type).to be_nil
    end

    it 'returns a default params value' do
      expect(command.params).to be_nil
    end
  end

  describe '#call' do
    it 'raises not implemented error' do
      expect { command.call }.to raise_error(NotImplementedError)
    end
  end
end
