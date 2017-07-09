class MapController < ApplicationController
  def index
    @course = Course.all
  end

  def create

  end

  def real_create
    @course = Course.new(title: params[:title])
    @course.save

    @place_ids = params[:place_ids]
    @place_names = params[:place_names]
    @place_ids_split = @place_ids.split(',')
    @place_names_split = @place_names.split(',')
    @places = @place_ids_split.zip(@place_names_split)

    @p =[]
    @places.each do |p_i,p_n|
      @p << @course.places.new(place_id: p_i, place_name: p_n)
    end
    @p.each(&:save)

    redirect_to '/'
  end

  def read
    @course = Course.find(params[:id])
  end
end
