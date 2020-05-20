class Admin::ImagesController < ApplicationController

  def destroy
    @image = ActiveStorage::Attachment.find(params[:id])
    @image.purge
    redirect_back(fallback_location: root_path)
  end
end
