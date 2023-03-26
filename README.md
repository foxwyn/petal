# Petal
 A basic starting point for new Discord bot projects utilizing discordrb.

 This project exists because I frequently need to make small or one-off discordrb bots, and end up having to duplicate a lot of repetitive structure and functionality. I hope to create a more sensible and maintainable skeleton for future bot projects.

 For simplicity, this layout assumes an old-school message command bot. As such, your Discord application will require the 'Message Content' intent to be able to read from chat.

 It's modular design is based on a now unavailable project called Gemstone created by z64. Most specifically, the module loader mechanism.

## Requirements
 There are a couple assumed baseline requirements for utilizing this project. The main ones being:
 - Ruby Language (Created using v3.1.3p185)
 - Bundler
 - Rake

## Installation
 From the directory where you store your projects/code, run the following using the Github CLI"
 
 ```console
 foo@bar:~$ gh repo clone foxwyn/petal
 foo@bar:~$ cd ./petal
 foo@bar:~/petal$ rake install
 ```

This will clone the repository and install all the required dependencies. You're then ready to start setting up Petal for your own custom use.