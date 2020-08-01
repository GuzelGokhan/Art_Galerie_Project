class ArtWorksController < ApplicationController
  
  def index
    @art_works = ArtWork.all
  end
  
  
  def show
    @art_work = ArtWork.find(params[:id])
  end
  
end
