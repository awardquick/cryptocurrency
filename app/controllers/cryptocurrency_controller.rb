class CryptocurrencyController < ApplicationController
  def index
    @profile = HTTParty.get("https://api.coinmarketcap.com/v1/ticker/").parsed_response
  end
end
