
class Api::GuessController < ApplicationController

  respond_to :json

  def index
    puts 'funk'
    letter = params[:letter]
    @response = $runner.get_pattern(letter)
    respond_with @response, $runner.words
  end
end
