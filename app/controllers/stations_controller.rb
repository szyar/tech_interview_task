class StationsController < ApplicationController
  before_action :set_station, only: [:show, :edit, :update, :destroy]

  def index
    @stations = Station.all
  end

  def show
  end

  def new
    @station = Station.new
  end

  def edit
  end

  def create
    @station = Station.new(station_params)

    respond_to do |format|
      if @station.save
        format.html { redirect_to @station, notice: 'Station was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @station.update(station_params)
        format.html { redirect_to @station, notice: 'Station was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @station.destroy
    respond_to do |format|
      format.html { redirect_to stations_url, notice: 'Station was successfully destroyed.' }
    end
  end

  private
  def set_station
    @station = Station.find(params[:id])
  end

  def station_params
    params.require(:station).permit(:railway_name, :station_name, :minutes_to_walk, :building_id, :number)
  end

end
