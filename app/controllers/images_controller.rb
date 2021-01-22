class ImagesController < ApplicationController
  def index
    @images = Images.all
  end

  def show
  end

  def new
    @image = Image.new
  end

  def create
    imagj
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
