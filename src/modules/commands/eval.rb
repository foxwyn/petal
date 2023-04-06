# frozen_string_literal: true

module Petal::Commands
  module Eval
    extend Discordrb::Commands::CommandContainer
    
    command(:eval, description: 'Evaluates code', usage: 'eval <code>') do |event, *code|
      break unless event.user.id == ENV['BOT_OWNER_ID'].to_i

      begin
        eval code.join(' ')
      rescue => e
        "⚠️ ```#{e.message}```"
      end
    end
  end
end