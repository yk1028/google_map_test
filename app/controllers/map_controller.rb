class MapController < ApplicationController
  def index
    @course = Course.all
  end

  def create

  end

  def real_create
    @str = Course.new(title: params[:title], place_ids: params[:place_ids]);
    @str.save

    redirect_to '/'
  end

  def read
    @course = Course.find(params[:id]);
  end
end
