require 'pry'
require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../tic_tac_toe", __FILE__)
require_relative 'game'
require_relative 'board'
require_relative 'board_case'
require_relative 'player'
require_relative 'show'
require_relative 'application' 


class BoardCase
attr_accessor :position, :contenu
 
    def initialize(position, contenu)
    @position = position
    @contenu = contenu
    end

    def show_contenu
        return @contenu
    end
end
