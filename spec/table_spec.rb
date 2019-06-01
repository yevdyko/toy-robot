# frozen_string_literal: true

require 'table'

describe Table do
  subject(:table) { described_class.new }

  describe '#initialize' do
    it 'has a default width value' do
      expect(table.width).to eq(5)
    end

    it 'has a default length value' do
      expect(table.length).to eq(5)
    end
  end
end
