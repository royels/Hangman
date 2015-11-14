require 'net/http'

class GameController < ApplicationController
  def start
  end

  def play
    $length = params[:length]
  end

  def end
  end
end
