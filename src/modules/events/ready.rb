# frozen_string_literal: true

module Petal::Events
  module Ready
    extend Discordrb::EventContainer

    ready do |event|
      puts "Petal v#{Petal::VERSION} is now running"
      puts "Invite at https://discord.com/api/oauth2/authorize?client_id=#{ENV['DISCORD_CLIENT_ID']}&permissions=0&scope=bot"
    
      Petal::BOT.send_message(ENV['BOT_LOG_CHANNEL_ID'], "Petal v#{Petal::VERSION} is now running")
    end
  end
end