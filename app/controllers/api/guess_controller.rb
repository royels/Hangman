require 'json'
class Api::GuessController < ApplicationController

  respond_to :json

  def index
    letter = params[:letter]
    @response = $runner.get_pattern(letter)
    respond_with @response.to_json
  end
end
