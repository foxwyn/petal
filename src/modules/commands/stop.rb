# frozen_string_literal: true

module Petal::Commands
  module Stop
    extend Discordrb::Commands::CommandContainer
    
    command(:stop, description: 'Stops the bot', usage: 'stop') do |event|
      break unless event.user.id == ENV['BOT_OWNER_ID'].to_i
      
      event.channel.send_message('Stopping bot...')
    
      Petal::BOT.stop
      exit
    end
  end
end