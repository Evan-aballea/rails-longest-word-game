require "json"
require "open-uri"
class GamesController < ApplicationController

  def new
    alphabet = ('a'..'z').to_a
    @letters = alphabet.sample(10).join(" ").upcase
  end

  def score
    @answer = params[:input]
    url = "https://wagon-dictionary.herokuapp.com/#{@answer}"
    list = URI.open(url).read
    @final = JSON.parse(list)
  end
end
