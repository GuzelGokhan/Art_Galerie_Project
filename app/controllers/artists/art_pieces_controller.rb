class Artists::ArtWorksController < ApplicationController
  before_action :set_artist
  
  def index
    @art_pieces = @artist.art_pieces
  end

  private
  
  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

end
