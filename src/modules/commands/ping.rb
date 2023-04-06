# frozen_string_literal: true

module Petal::Commands
  module Ping
    extend Discordrb::Commands::CommandContainer

    command(:ping, description: 'Returns a pong', usage: 'ping') do |event|
      'Pong!'
    end
  end
end