![GitHub](https://img.shields.io/github/license/foxwyn/petal)
![GitHub commit activity](https://img.shields.io/github/commit-activity/m/foxwyn/petal)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/foxwyn/petal)

# Petal
 A basic starting point for new Discord bot projects utilizing discordrb.

 This project exists because I frequently need to make small or one-off discordrb bots, and end up having to duplicate a lot of repetitive structure and functionality. I hope to create a more sensible and maintainable skeleton for future bot projects.

 For simplicity, this layout assumes an old-school message command bot. As such, your Discord application will require the 'Message Content' intent to be able to read from chat.

 The following basic commands are included:
 - eval
 - ping
 - stop

 It's modular design is based on a now unavailable project called Gemstone created by z64. Most specifically, the module loader mechanism.

## Installation
 From the directory where you store your projects/code, run the following using the Github CLI"
 
 ```console
 foo@bar:~$ gh repo clone foxwyn/petal
 foo@bar:~$ cd ./petal
 foo@bar:~/petal$ rake install
 ```

This will clone the repository and install all the required dependencies. You're then ready to start setting up Petal for your own custom use.

Next, copy the `example.env` file to `.env` and replace it with your own applicable values.

```console
foo@bar:~/petal$ cp example.env .env
```

Afterwards, you should be able to bring your bot online.

```console
foo@bar:~/petal$ rake
Petal v0.0.0 is now running.
Invite at https://example.com/invite/bot/1234567890
```

If properly configured in your environment, a ready message should appear in the log channel. By default, the configured owner can shutdown the bot by typing `!stop` in a channel the bot has permission to read.

## Requirements
 There are a couple assumed baseline requirements for utilizing this project. The main ones being:
 - Ruby
 - Bundler
 - Rake

 Petal is currently developed on Windows using v3.1.3p185