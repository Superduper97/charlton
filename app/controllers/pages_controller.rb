class PagesController < ApplicationController

  def index
  end

  def about
  end

  def machinery
      @search = Admin::Product.ransack(params[:q])
      @products = @search.result(distinct: true)
    end

def product
  @contact = Page.new
end

def create
  @contact = Page.new(params[:page])
  @contact.request = request
  if @contact.deliver
    flash.now[:error] = nil
    redirect_to root_path, notice: 'Message sent successfully'
  else
    flash.now[:error] = 'Cannot send message'
    redirect_to root_path, notice: 'NO'
  end
end

end