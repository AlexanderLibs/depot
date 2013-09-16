class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    session[:store_counter] = (session[:store_counter] || 0) + 1
    @store_counter = session[:store_counter]
  end

end
