module Petal::Commands
  module Eval
    extend Discordrb::Commands::CommandContainer
    
    command(:eval, description: 'Evaluates code', usage: 'eval <code>') do |event, *code|
      begin
        eval code.join(' ')
      rescue => e
        "⚠️ ```#{e.message}```"
      end
    end
  end
end