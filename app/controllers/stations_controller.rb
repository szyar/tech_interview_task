class StationsController < ApplicationController
  before_action :set_building, only: [:show, :edit, :update, :destroy]
  before_action :set_station, only: [:show, :edit, :update, :destroy]

  def index
    @stations = Station.all
  end

  def show
  end

  def edit
  end

  def create
    @building = Building.find(params[:id])
    @station = @building.stations.save(station_params)
    redirect_to building_path(@building)
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
      format.html { redirect_to building_stations_url, notice: 'Station was successfully destroyed.' }
    end
  end

  private
  def set_building
    @building = Building.find(params[:id])
  end

  def set_station
    @station = Station.find(params[:id])
  end

  def station_params
    params.require(:station).permit(:railway_name, :station_name, :minutes_to_walk)
  end

end
