require 'pry'

$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'guessr/version'
require 'guessr/init_db'

## Number Guessing Game
#* New Game
#* Existing Game

#* New Game
#* Ask them to choose player
#* Each turn, they can guess a number or quit

#* Existing Game
#* Each turn, they can guess a number or quit

module Guessr
  class Player < ActiveRecord::Base
  end

  class Game < ActiveRecord::Base
    def win?
      self.answer == self.last_guess
    end

    def play
      until self.win?
        puts "Please guess a number (or quit with 'q'): "
        result = gets.chomp
        if result == 'q'
          exit
        else
          self.turn(result)
        end
      end
    end

    def turn(guess)
      self.update(last_guess: guess.to_i,
                  guess_count: self.guess_count + 1)
      if self.last_guess > self.answer
        puts "Too high!"
      elsif self.last_guess < self.answer
        puts "Too low!"
      else
        puts "You win!"
      end
    end
  end

  binding.pry
end
