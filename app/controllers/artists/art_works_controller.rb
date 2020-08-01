class Artists::ArtWorksController < ApplicationController
  before_action :set_artist
  
  def index
    @art_works = @artist.art_works
  end

  private
  
  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

end
