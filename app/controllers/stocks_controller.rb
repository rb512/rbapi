class StocksController < ApplicationController
  respond_to :json
  def index
  end
  def show
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#{params[:stock]}"
    @stock = StockQuote::Stock.quote(params[:stock])
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#{@stock}"
    respond_with @stock
  end
end
