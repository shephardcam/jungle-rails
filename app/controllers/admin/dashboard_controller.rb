class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: "jungle", password: "book"
  def show

    @total_stock = Product.sum(:quantity)

    @number_of_items = Product.count
  end
  
end