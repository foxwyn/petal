# frozen_string_literal: true

require 'discordrb'
require 'dotenv/load'

require_relative 'petal/version'

module Petal
    # Discord bot
    BOT = Discordrb::Commands::CommandBot.new(
      client_id: ENV['DISCORD_CLIENT_ID'],
          token: ENV['DISCORD_TOKEN'],
         prefix: ENV['BOT_PREFIX']
    )

  # Module loader
  # https://github.com/z64/gemstone/blob/master/src/bot.rb
  def self.load_modules(klass, path)
    new_module = Module.new
    const_set(klass.to_sym, new_module)
    Dir["src/modules/#{path}/*.rb"].each { |file| load file }
    new_module.constants.each do |mod|
      BOT.include! new_module.const_get(mod)
    end
  end

  load_modules(:Commands, 'commands')
  load_modules(:Events, 'events')

  # Blast off!
  BOT.run

  puts "Petal v#{Petal::VERSION} is now running."
  puts "Invite at https://discord.com/api/oauth2/authorize?client_id=#{ENV['DISCORD_CLIENT_ID']}&permissions=0&scope=bot"
end