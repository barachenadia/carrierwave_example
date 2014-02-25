class PhotosController < ApplicationController
   def index
  	@photos = Photo.all

  end

  def new
  	@photo = Photo.new
  end

  def create
  	 @photo = Photo.new(painting_params)
 
     if @photo.save
        redirect_to photos_path, notice: "The painting #{@photo.name} has been uploaded."
     else
        render "new"
     end
  end

  def destroy

  	@photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to photos_path, notice: "The Painting #{@photo.name} has been deleted."
  end



 private
def painting_params
params.require(:photo).permit(:name, :image)
end
end
