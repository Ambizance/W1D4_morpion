
require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../tic_tac_toe", __FILE__)
require_relative 'game'
require_relative 'board'
require_relative 'board_case'
require_relative 'player'
require_relative 'show'
require_relative 'application' 

class Show
    def initialize
        puts "    "+"_"*27
        puts "   "+"|"+" "*27+"|"
        puts "   "+"|"+" "*8+"TIC TAC TOE"+" "*8+"|"
        puts "   "+"|"+"_"*27+"|"
    end

    def show_grid
        puts "   "+"-"*15
        puts "   "+("|"+" "*5)*3
        puts "   "+"|"+"  "+@a1.show_contenu+"  "+"|"+"  "+@a2.show_contenu+"  "+"|"+"  "+@a3.show_contenu+"  "+"|"
        puts "   "+("|"+" "*5)*3
        puts "   "+"-"*15
        puts "   "+("|"+" "*5)*3
        puts "   "+"|"+"  "+@b1.show_contenu+"  "+"|"+"  "+@b2.show_contenu+"  "+"|"+"  "+@b3.show_contenu+"  "+"|"
        puts "   "+("|"+" "*5)*3
        puts "   "+"-"*15
        puts "   "+("|"+" "*5)*3
        puts "   "+"|"+"  "+@c1.show_contenu+"  "+"|"+"  "+@c2.show_contenu+"  "+"|"+"  "+@c3.show_contenu+"  "+"|"
        puts "   "+("|"+" "*5)*3
        puts "   "+"-"*15
    end
end
