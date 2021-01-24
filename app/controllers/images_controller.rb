class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :destroy]

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
    @image = Images.new(image_params)

    respond_to do |format|
      if @image.save
        format.html { redirect_to images_path(@image.id), notice: 'Image was created successfully' }
        format.json { render :show, status: :created, location: @image }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @image.destroy
    respond_to do |format|
      format.html { redirect_to images_url, notice: 'Image was deleted' }
      format.json { head :no_content }
    end
  end

  private

    # Search by the id
    def set_image
      @image = Images.friendly.find(params[:id])
    end

    def image_params
      params.require(:image).permit(:title, :data)
    end
end
