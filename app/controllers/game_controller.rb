require 'net/http'

class GameController < ApplicationController
  def start
  end

  def play
    $length = Integer(params[:length])
  end

  def end
  end
end
