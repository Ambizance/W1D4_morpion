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


class Board
attr_accessor :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3

    def initialize
        @a1 = BoardCase.new("A1"," ")
        @a2 = BoardCase.new("A2"," ")
        @a3 = BoardCase.new("A3"," ")
        @b1 = BoardCase.new("B1"," ")
        @b2 = BoardCase.new("B2"," ")
        @b3 = BoardCase.new("B3"," ")
        @c1 = BoardCase.new("C1"," ")
        @c2 = BoardCase.new("C2"," ")
        @c3 = BoardCase.new("C3"," ")

        array_boardcase = [@a1, @a2, @a3, @b1, @b2, @b3, @c1, @c2, @c3]  
    end

    def modify_grid(position, contenu)
        array_boardcase.each |boardcase| if boardcase.position == ask_choice(player_playing) do boardcase.contenu = player_symbol 
        end 
    end 

    #on check si les contenus sont identiques dans les lignes, les colomnes et les diagonales. On retourne TRUE si positif
    def check_results 
        if ((@a1.contenu == @a2.contenu) && ( @a2.contenu == @a3.contenu)) 
                return "acompleted"
            elsif ((@b1.contenu == @b2.contenu) && ( @b2.contenu == @b3.contenu)) 
                return "bcompleted"
            elsif ((@c1.contenu == @c2.contenu) && ( @c2.contenu == @c3.contenu))
                return "ccompleted"
            elsif ((@a1.contenu == @b1.contenu) && ( @b1.contenu == @c1.contenu))
                return "1completed"
            elsif  ((@a2.contenu == @b2.contenu) && ( @b2.contenu == @c2.contenu)) 
                return "2completed"
            elsif ((@a3.contenu == @b3.contenu) && ( @b3.contenu == @c3.contenu))
                return "3completed"
            elsif (((@a1.contenu == @b2.contenu) && ( @b2.contenu == @c3.contenu)) || ((@a3.contenu == @b2.contenu) && ( @b2.contenu == @c1.contenu)))
                return "diagcompleted"
            else
                return "nothingcompleted"
        end
    end
end


end
