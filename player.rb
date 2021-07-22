
require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../tic_tac_toe", __FILE__)
require_relative 'game.rb'
require_relative 'board.rb'
require_relative 'board_case.rb'
require_relative 'player.rb'
require_relative 'show.rb'
require_relative 'application.rb' 


class Player
    attr_accessor :name, :symbol
    
    def initialize(name, symbol)
        @name = name
        @symbol = symbol 
    end



    




end