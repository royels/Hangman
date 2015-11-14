class Api::WordsController < ApplicationController
  respond_to :json

  def index
    # This is one of the best candidates for SQL injection I've ever seen, TODO: remind me to try it sometime
    @words = Word.where("length(text) = " + $length.to_s)
    respond_with @words
  end

  def guess
    letter = params[:letter]
    puts letter
    respond_with get_next_set_of_words
  end

  private
    def get_next_set_of_words
      @words = Word.where("length(text) = " + $length.to_s)
    end

end
