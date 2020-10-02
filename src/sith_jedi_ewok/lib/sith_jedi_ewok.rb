require "sith_jedi_ewok/version"
require 'ruby2d'
require 'tty-prompt'
require 'colorize'
require 'artii'
require_relative 'dispatch'

Sound.new('media/blaster-firing.wav').play
loop do
    system('clear')
    puts "Welcome to...".colorize(:light_yellow)
    puts Artii::Base.new(:font => 'slant').asciify("Sith - Lord  Jedi  Ewok").colorize(:light_yellow).bold
    choice = TTY::Prompt.new.select("What would you like to do?".colorize(:light_yellow), help_color: :bright_magenta) do |menu|
        menu.choice "Play Game".colorize(:light_green), 0
        menu.choice "Read Rules".colorize(:light_yellow), 1
        menu.choice "View Leaderboard".colorize(:light_yellow), 2
        menu.choice "Exit".colorize(:light_red), 3
    end
    dispatch choice
end