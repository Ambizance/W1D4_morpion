require 'bundler'
Bundler.require
 
$:.unshift File.expand_path("./../tic_tac_toe", __FILE__)
require_relative 'game'
require_relative 'board'
require_relative 'board_case'
require_relative 'player'
require_relative 'show'
require_relative 'application' 



class Game
    #lors d'initialisation elle créé 2 players et 1 board
    def initialize
        puts "Comment s'appelle le joueur 1 ?"
        name_player1 = gets.chomp.to_s
        puts "Comment s'appelle le joueur 2 ?"
        name_player2 = gets.chomp.to_s
        
        grid = Board.new
        @player1 = Player.new(name_player1, "X")
        @player2 = Player.new(name_player2, "O")
    end

    def who_play
        player_starting = rand("player1", "player2")
        puts "C'est #{player_starting.name} qui commence !"
       return player_starting
    end

    def ask_choice(player_playing)
        puts "Quelle case #{player_playing} souhaite-t-il remplir ?  "
        puts "> "
        player_choice = gets.chomp.to_s
        return player_choice
    end

    #check si le jeu est terminé ou s'il faut reboucler
    def symbol_who_won(result)
        if result == "acompleted"
            symbol_winner = @a1.contenu

        elsif result == "bcompleted"
            symbol_winner = @b1.contenu

        elsif result == "ccompleted"
            symbol_winner = @c1.contenu

        elsif result == "1completed"
            symbol_winner = @a1.contenu

        elsif result == "2completed"
            symbol_winner = @a2.contenu

        elsif result == "3completed"
            symbol_winner = @a3.contenu

        elsif result == "diagcompleted"
            symbol_winner = @b2.contenu
        return symbol_winner
        end
    end

    def who_won(symbol_winner)
        if (symbol_winner == player1.symbol)
            puts "Jeu terminé ! #{player1.name} a gagné ! BRAVO !"
        end 
        if (symbol_winner == player2.symbol)
            puts "Jeu terminé ! #{player2.name} a gagné ! BRAVO !"
        end
    end

    def new_game?
        puts "Voulez-vous faire une nouvelle partie ? Taper 1 pour une nouvelle partie ou 0 pour quitter"
        answer = gets.chomp
        return answer
    end

end