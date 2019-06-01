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
end
