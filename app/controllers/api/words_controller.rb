require_relative "../hangman/hangman_runner"

class Api::WordsController < ApplicationController
  respond_to :json

  def initialize
    # This is one of the best candidates for SQL injection I've ever seen, TODO: remind me to try it sometime
    @words = Word.where("length(text) = " + $length.to_s)
    @guesses = SortedSet.new
    @runner = HangmanRunner.new(@words, @guesses)
  end

  def index
    respond_with @response
  end

  def guess
    letter = params[:letter]
    respond_with @response
  end

  private

end
