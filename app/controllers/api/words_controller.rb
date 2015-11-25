class Api::WordsController < ApplicationController
  respond_to :json

  def index
    respond_with $words, $pattern, $length
  end

  # Use for debugging purposes
end
