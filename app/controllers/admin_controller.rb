class AdminController < ApplicationController

  def admin
    @search = Admin::Product.ransack(params[:q])
    @products = @search.result(distinct: true)
  end

end
