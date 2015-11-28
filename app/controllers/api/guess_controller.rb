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

  def list
    respond_with $runner.guesslist.to_json
  end

  def count
    respond_with $runner.guess_count.to_json
  end

  def pattern
    respond_with $runner.sanitized_pattern.to_json
  end

end
