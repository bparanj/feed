class VideosController < ApplicationController
  def index
    @videos = Video.all
    
    respond_to do |format|
      format.html
      format.rss { render :layout => false }
    end
  end
end
