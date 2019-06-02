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

  describe '#valid_position?' do
    context 'returns true when position is valid' do
      it 'has valid coordinates' do
        x_coordinate = 0
        y_coordinate = 1

        expect(table.valid_position?(x_coordinate, y_coordinate)).to be true
      end
    end

    context 'return false when position is invalid' do
      context 'when one or both coordinates are too big' do
        it 'has both too big coordinates' do
          x_coordinate = 7
          y_coordinate = 5

          expect(table.valid_position?(x_coordinate, y_coordinate)).to be false
        end

        it 'has a too big x-coordinate' do
          x_coordinate = 6
          y_coordinate = 3

          expect(table.valid_position?(x_coordinate, y_coordinate)).to be false
        end

        it 'has a too big y-coordinate' do
          x_coordinate = 2
          y_coordinate = 5

          expect(table.valid_position?(x_coordinate, y_coordinate)).to be false
        end
      end

      context 'when one or both coordinates are negative' do
        it 'has both negative coordinates' do
          x_coordinate = -1
          y_coordinate = -1

          expect(table.valid_position?(x_coordinate, y_coordinate)).to be false
        end

        it 'has a negative x-coordinate' do
          x_coordinate = -1
          y_coordinate = 2

          expect(table.valid_position?(x_coordinate, y_coordinate)).to be false
        end

        it 'has a negative y-coordinate' do
          x_coordinate = 2
          y_coordinate = -2

          expect(table.valid_position?(x_coordinate, y_coordinate)).to be false
        end
      end
    end
  end
end
