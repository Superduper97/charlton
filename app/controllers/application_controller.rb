class ApplicationController < ActionController::Base

  before_action :authenticate_user!, except: [:index, :machinery, :contact, :product, :ploughparts]

end
