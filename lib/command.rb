# frozen_string_literal: true

class Command
  attr_reader :type, :params

  def initialize(type: nil, params: nil)
    @type = type
    @params = params
  end

  def call
    raise NotImplementedError
  end
end
