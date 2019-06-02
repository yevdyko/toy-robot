# frozen_string_literal: true

require_relative '../command'

module Commands
  class Left < Command
    def call(table:, robot:)
      return unless robot.placed?

      robot.turn(:left)
    end
  end
end
