class BandsController < ApplicationController

  def index
    @bands = Band.all
    render :index
  end

  def new
    render :new
  end

  def create
    @band = Band.new(band_params)
    if @band.save
      redirect_to band_url(@band)
    else
      flash[:errors].errors.full_messages
      redirect_to new_band_url
    end
  end

  def edit
    @band = Band.find(params[:id])
    render :edit
  end

  def update
    @band = Band.find(params[:id])
    if @band.updated_attributes(band_params)
      redirect_to band_url(@band)
    else
      flash[:errors].errors.full_messages
      redirect_to band_url(params[:id])
    end
  end

  private

  def band_params
    params.require(:band).permit(:name, :band_image_url)
  end

end
