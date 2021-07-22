require 'pry'
require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../tic_tac_toe", __FILE__)
require_relative 'game.rb'
require_relative 'board.rb'
require_relative 'board_case.rb'
require_relative 'player.rb'
require_relative 'show.rb'
require_relative 'application.rb' 

show = Show.new
binding.pry

game = Game.new
show_grid


show_grid
starting_player = #who_start
choice = ask_choice(starting_player)



