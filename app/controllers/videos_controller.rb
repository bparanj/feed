class VideosController < ApplicationController
  def index
    @videos = Video.all
    
    respond_to do |format|
      format.rss { render :layout => false }
    end
  end
end
