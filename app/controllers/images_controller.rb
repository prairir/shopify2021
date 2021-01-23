class ImagesController < ApplicationController
  before_action :set_image_by_id, only: [:show, :destroy]
  
  # GET /images
  # GET /images.json
  def index
    @images = Images.all
  end

  # GET /images/1
  # GET /images/1.json
  def show
  end

  # GET /images/new
  def new
    @image = Images.new
  end


  # POST /images
  # POST /images.json
  def create
    @image = Image.new
  end

  def destroy
    @image.destroy
    respond_to do |format| 
      format.html { redirect_to images_url, notice: 'Image was deleted' }
      format.json { head :no_content}
    end
  end

  private

    # Search by the id
    def set_image_by_id
      @image = Micropost.find(params[:imgID])
    end

    def image_params
      params.require(:image).permit(:imgID, :data)
    end
end
