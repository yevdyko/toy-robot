# frozen_string_literal: true

require_relative 'commands/place'
require_relative 'commands/move'
require_relative 'commands/left'
require_relative 'commands/right'
require_relative 'commands/report'

class CommandBuilder
  COMMANDS = {
    place: Commands::Place,
    move: Commands::Move,
    left: Commands::Left,
    right: Commands::Right,
    report: Commands::Report
  }.freeze

  def call(type:, params:)
    command_klass = COMMANDS[type.to_sym]
    return raise "Command '#{type}' not found" unless command_klass

    command_klass.new(type: type, params: params)
  end
end
