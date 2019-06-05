class PhotosController < ApplicationController
before_action :authenticate_user!

  def create
    @photo = Photo.find(params[:place_id])
    @photo.create(photo_params.merge(user: current_user))

  end

  private

  def photo_params
    params.require(:photo).permit(:picture, :caption)    
  end
end
