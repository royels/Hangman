class Api::WordsController < ApplicationController
  respond_to :json

  def initialize
    # This is one of the best candidates for SQL injection I've ever seen, TODO: remind me to try it sometime
    $words = Word.where("length(text) = " + $length.to_s)
  end

  # Refactored to be used for testing if I need it.
end
