require_relative "./hangman/hangman_runner"

class GameController < ApplicationController
  def start
  end

  def play
    @length = Integer(params[:length])
    words = Word.where("length(text) = " + @length.to_s)
    $runner = HangmanRunner.new(words, @length)
  end

  def end
  end

end
