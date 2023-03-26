module Petal::Commands
  module Stop
    extend Discordrb::Commands::CommandContainer
    
    command(:stop, description: 'Stops the bot', usage: 'stop') do |event|
      event.channel.send_message('Stopping bot...')
      
      Petal::BOT.stop
      exit
    end
  end
end