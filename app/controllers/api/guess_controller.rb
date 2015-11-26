require 'json'
class Api::GuessController < ApplicationController

  respond_to :json

  def index
    letter = params[:letter]
    @pattern = $runner.get_pattern(letter)
    @response = {
        :pattern => @pattern,
        :guesscount => $runner.guess_count,
        :guesslist => $runner.guesslist
    }
    respond_with @response
  end
end
