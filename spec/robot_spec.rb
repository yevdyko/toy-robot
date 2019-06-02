# frozen_string_literal: true

require 'robot'

describe Robot do
  subject(:robot) { described_class.new }

  describe '#initialize' do
    it 'has a default x-coordinate' do
      expect(robot.x_coordinate).to be_nil
    end

    it 'has a default y-coordinate' do
      expect(robot.y_coordinate).to be_nil
    end

    it 'has a default facing' do
      expect(robot.facing).to be_nil
    end
  end

  describe '#valid_facing?' do
    it 'returns true when facing is valid' do
      facing = :north

      expect(robot.valid_facing?(facing)).to be true
    end

    it 'returns false when facing is invalid' do
      facing = :left

      expect(robot.valid_facing?(facing)).to be false
    end
  end

  describe '#placed?' do
    context 'return true when position and facing are not nil' do
      it 'has position and facing' do
        robot.x_coordinate = 0
        robot.y_coordinate = 0
        robot.facing = :north

        expect(robot.placed?).to be true
      end
    end

    context 'return false when one of the coordinates or facing is nil' do
      it 'has a nil x-coordinate' do
        robot.y_coordinate = 0
        robot.facing = :north

        expect(robot.placed?).to be false
      end

      it 'has a nil y-coordinate' do
        robot.x_coordinate = 0
        robot.facing = :north

        expect(robot.placed?).to be false
      end

      it 'has a nil facing' do
        robot.x_coordinate = 0
        robot.y_coordinate = 0

        expect(robot.placed?).to be false
      end
    end
  end
end
