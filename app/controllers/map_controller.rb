class MapController < ApplicationController
  def index
    @course = Course.all
  end

  def create

  end

  def real_create
    @str = Course.new(title: params[:place_ids]);
    @str.save

    redirect_to '/'
  end

  def read
    @course
  end
end
