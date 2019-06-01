# frozen_string_literal: true

require 'input_parser'

describe InputParser do
  subject(:input_parser) { described_class.new }

  describe '#call' do
    it 'parses input with params' do
      input = 'PLACE 0,0,NORTH'

      expect(input_parser.call(input: input)).to eq(['place', %w[0 0 NORTH]])
    end

    it 'parses input without params' do
      input = 'MOVE'

      expect(input_parser.call(input: input)).to eq(['move', []])
    end

    it 'removes trailing whitespaces in input' do
      input = '  PLACE 0 , 0 , NORTH  '

      expect(input_parser.call(input: input)).to eq(['place', %w[0 0 NORTH]])
    end
  end
end
